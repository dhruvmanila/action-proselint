#!/usr/bin/env bash

declare statuscode

statuscode=0

mdfiles=$(find . -type f -name "*.md")


for file in $mdfiles; do
    echo "::debug:: Checking $file"
    proselint "$file" || statuscode=$?
done

exit $statuscode

