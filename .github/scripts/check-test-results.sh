#!/bin/bash
# Fail if the testsuite has failures that are not listed in the allow list.
#
# Usage: check-test-results.sh <target> <build dir> <allow list>

set -euo pipefail

target=$1
build_dir=$2
allow_list=$3

mapfile -t sums < <(find "$build_dir" -name '*.sum')
if [ "${#sums[@]}" -eq 0 ]; then
  echo "::error::No .sum files found in $build_dir, the testsuite did not run"
  exit 1
fi

failures=$(mktemp)
expected=$(mktemp)

grep -hE '^(FAIL|ERROR|UNRESOLVED): ' "${sums[@]}" | sort -u > "$failures" || true

# Entries for this target, without the leading target name.
sed -n "s/^$target //p" "$allow_list" | sort -u > "$expected"

echo "Failures in this run:"
cat "$failures"

unexpected=$(grep -vxFf "$expected" "$failures" || true)
fixed=$(grep -vxFf "$failures" "$expected" || true)

if [ -n "$fixed" ]; then
  echo "::notice::Allow-listed failures that no longer fail (remove them from $allow_list):"
  echo "$fixed"
fi

if [ -n "$unexpected" ]; then
  echo "::error::Unexpected test failures:"
  echo "$unexpected"
  exit 1
fi

echo "No unexpected failures."
