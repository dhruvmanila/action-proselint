# Proselint

_GitHub action for Proselint_

## Example

```
on:
  push:
    branches:
      - master

name: "Proselint"

jobs:
  Proselint:
    name: Proselint
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Run Proselint
        uses: dhruvmanila/action-proselint@master
```


