# %NAME%

[![GitHub Release](https://img.shields.io/github/v/release/%AUTHOR%/%NAME%)](https://github.com/%AUTHOR%/%NAME%/releases/)
[![Test Action](https://github.com/%AUTHOR%/%NAME%/actions/workflows/test.yml/badge.svg)](https://github.com/%AUTHOR%/%NAME%/actions/workflows/test.yml)

%DESCRIPTION%

## Usage

```yml
on: [push]

permissions:
  contents: write

jobs:
  bump-uses:
    runs-on: ubuntu-latest
    steps:
      - uses: %AUTHOR%/%NAME%@v1
        with:
          who-to-greet: "Mona the Octocat"

      - run: echo random-number "$RANDOM_NUMBER"
        shell: bash
        env:
          RANDOM_NUMBER: ${{ steps.foo.outputs.random-number }}
```

## Inputs

| Input          | Description  | Required | Default |
| -------------- | ------------ | -------- | ------- |
| `who-to-greet` | Who to greet | ✅       | `World` |

## Outputs

| Output          | Description   | Example |
| --------------- | ------------- | ------- |
| `random-number` | Random number | `9999`  |
