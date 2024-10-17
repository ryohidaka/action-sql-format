# SQL Formatter

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-sql-format)](https://github.com/ryohidaka/action-sql-format/releases/)
[![Test Action](https://github.com/ryohidaka/action-sql-format/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-sql-format/actions/workflows/test.yml)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

GitHub Actions to formats SQL using [sql-formatter](https://www.npmjs.com/package/sql-formatter).

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
          path: "sql"
          config: '{"language": "spark", "tabWidth": 2}'
          commit-user-name: "GitHub Actions"
          commit-user-email: "actions@github.com"
          commit-message: "chore: Format SQL files"
          dry-run: false
```

## Inputs

| Input               | Description                                                          | Default                   |
| ------------------- | -------------------------------------------------------------------- | ------------------------- |
| `path`              | Directory path to format shell scripts.                              | `.`                       |
| `config`            | Additional path to config JSON file or json string for sql-formatter | `""`                      |
| `commit-user-name`  | Commit username.                                                     | `GitHub Actions`          |
| `commit-user-email` | Commit email.                                                        | `actions@github.com`      |
| `commit-message`    | Commit message.                                                      | `chore: Format SQL files` |
| `dry-run`           | If true, the commit and push steps will be skipped.                  | `false`                   |
