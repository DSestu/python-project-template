# Python Project Template 🚀

This repository provides a CookieCutter template designed for rapid creation of Python tooling projects. The template aims to make your tools easily distributable and callable everywhere using [`uvx`](https://github.com/astral-sh/uv).

```bash
uvx cookiecutter gh:DSestu/python-project-template
```

## Overview

- **Goals:**  
  - Enable fast creation of new tools as callable Python packages.
  - Ensure packages are easily installable and executable via `uvx`.
  - Deploy packages to PyPI with a main entrypoint out of the box.

- **Key Features:**  
  - Packaging and environment managed with [uv](https://github.com/astral-sh/uv).
  - Project structure includes a minimal, ready-made CLI that prints "hello world" when invoked via `uvx`.
  - Automated packaging and deployment through GitHub Actions, triggered on new releases.

## Release and Deployment Workflow

- Uses the [release-please](https://github.com/googleapis/release-please) GitHub Action.
  - Commits or PR merges to `master` automatically open a "release" pull request.
  - Versioning is inferred from commit titles using [Conventional Commits](https://www.conventionalcommits.org/).
  - The version is auto-incremented and checked by a dedicated GitHub Action.
- Merging a release PR triggers:
  - Creation of a new release.
  - Attachment of built binaries to the release.
  - Publication to PyPI.

Once published, your package becomes publicly available and can be executed remotely via `uvx`.

## Code Quality

- Automated code validation using pre-commit hooks.
- Automatic unit test execution included in the template.

## Getting Started

The template checks if `uv` is installed before proceeding. If it isn't, you'll be prompted to install it.

- **With `uv` installed, generate a new project using:**

  ```bash
  uvx cookiecutter gh:DSestu/python-project-template
  ```

- **Without `uv`, use traditional CookieCutter:**

  ```bash
  pip install cookiecutter
  cookiecutter gh:DSestu/python-project-template
  ```

## License 📜

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
