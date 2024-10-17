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
          path: "sql"
          commit-user-name: "GitHub Actions"
          commit-user-email: "actions@github.com"
          commit-message: "chore: Format SQL files"
          dry-run: false
```

## Inputs

| Input               | Description                                         | Default                   |
| ------------------- | --------------------------------------------------- | ------------------------- |
| `path`              | Directory path to format shell scripts.             | `.`                       |
| `commit-user-name`  | Commit username.                                    | `GitHub Actions`          |
| `commit-user-email` | Commit email.                                       | `actions@github.com`      |
| `commit-message`    | Commit message.                                     | `chore: Format SQL files` |
| `dry-run`           | If true, the commit and push steps will be skipped. | `false`                   |
