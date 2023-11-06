#!/bin/sh

set -e

# We only want checks to really run when a github merge queue pushes a branch.
if [ "${EVENT}" = "pull_request" ]; then
    exit 0
elif [ "${EVENT}" != "push" ]; then
    echo "Unknown event. Failing CI"
fi

for i in `seq 30`; do
    echo $i
done

echo hi 1

exit 1
