# Python Project Template 🚀

This repository contains a CookieCutter template to help iterate fast over new tooling creation.

> My main objective is aimed towards the creation of callable packages via `uvx` so the tools I create are accessible very easily and everywhere.

For this, they need to be released on PyPi, and have a main entrypoint.

The packaging, and the environment specs are made using uv. The entrypoint and the basic project structure is minimally prepared in the template. Using the template at-is will lead to the print of a "hello world" if called via uvx.

The packaging process and the deployement process are ensured via Github actions.

These are triggered by making a release.

The release-please github action is in the template, so that a commit or a pull request merge to master will automatically open a "release" pull request. The release version will be autoincremented and inferred by the commit titles, via the conventionnal commit standards. Conventionnal commit standards will be checked by a dedicated Github action upon pull request validation.

Merging this pull request will trigger:

* a new release
* built binaries attached to the release
* publication of the binaries to PyPi

This publication to pypi will make the package broadly available to everyone, and invocable remotely using uvx.

Additional code validation, via pre-commits, are also included in the template.

Automatic run of unit tests is also included.

```bash
uvx cookiecutter gh:DSestu/python-project-template
```

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
