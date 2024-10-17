# SQL Formatter

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-sql-format)](https://github.com/ryohidaka/action-sql-format/releases/)
[![Test Action](https://github.com/ryohidaka/action-sql-format/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-sql-format/actions/workflows/test.yml)

GitHub Actions to formats SQL using sql-formatter.

## Usage

```yml
on: [push]

permissions:
  contents: write

jobs:
  format-sql:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-sql-format@v1
        with:
```

## Inputs

| Input | Description | Required | Default |
| ----- | ----------- | -------- | ------- |
|       |             |          |         |
