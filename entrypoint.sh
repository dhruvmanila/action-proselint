#!/usr/bin/env bash

mdfiles=$(find . -type f -name "*.md")

for file in $mdfiles; do
    proselint "$file"
done

