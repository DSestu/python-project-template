# {{ cookiecutter.project_name }} 🚀

{{ cookiecutter.project_description }}

In order to allow automatic PR of release please, you have to give the permissions

for Github actions to create a PR:

* Go to repo
* Settings
* Actions
* General
* (scroll) Workflow permissions
* Tick "Allow GitHub Actions to create and approve pull requests"

Go to commit history, copy full sha (end of line copy icon) of the first commit "Cookiecutter initial commit". Then, edit "release-please-config.json", the field "bootstrap-sha", replace with the new sha and commit.

# You will also need at least one tag. So create a release from the first commit with a tag 0.1.0

# Setup publishing

go to github repo settings, environments, and create an environment named "pypi".

Then, go to your pypi account: publication, add a new publisher, github.

Use release_please.yml as workflow file.
Add the necessary informations depending of the project, and ensure env name "pypi"

# The package name have to match exactly the one on pypi

* [{{ cookiecutter.project_name }} 🚀](#{{ cookiecutter.project_slug }}-)
  * [Introduction 🌟](#introduction-)
  * [Core Technologies 🛠️](#core-technologies-️)
  * [Key Features ✨](#key-features-)
  * [Getting Started 🚀](#getting-started-)
    * [Setting up `devenv` \& `direnv` 🛠️](#setting-up-devenv--direnv-️)
  * [Notes](#notes)
    * [Multiple ways to use the environment](#multiple-ways-to-use-the-environment)
    * [Integrated devenv commands](#integrated-devenv-commands)
    * [Python environment management 💡](#python-environment-management-)
      * [Adding/removing packages](#addingremoving-packages)
      * [Environment synchronization](#environment-synchronization)
    * [Act](#act)
      * [VM Size](#vm-size)
  * [License 📜](#license-)

## Introduction 🌟

The template is built with a focus on minimal manual interaction for environment synchronization, allowing developers to dive straight into coding. Options for working in a local isolated environment or within a Docker container are provided.

## Core Technologies 🛠️

The following technologies are leveraged:

* **devenv / direnv**: Orchestrates the macro development environment
* **docker**: Enables project containerization
* **colima**: Facilitates local Docker containerization
* **uv**: Manages Python environments with Rust-based efficiency
* **act**: Runs GitHub Actions locally in a compact virtual machine

## Key Features ✨

* **Auto-sync Packages** 🔄: `uv sync` automatically manages package additions or removals
* **Auto-activate Environments** 🌈: Seamless environment activation with devenv + direnv
* **Docker Ready** 🐳: Projects can be run in a container with ease
* **Local Isolation** 🏠: Projects can be executed in a local isolated environment
* **Local GitHub Actions** 🚀: Workflows can be tested before pushing with `act`
* **Testing Suite** 🧪: Preconfigured with Pytest and GitHub Actions
* **Code Formatting** 🧹: Code cleanliness is maintained with Ruff
* **Automatic pre-commit linting** 🔗: Various pre-commit hooks automatically installed

## Getting Started 🚀

1. Make sure you have `devenv` and `direnv` installed.
2. Clone this repository

```bash
git clone <your-repo-url> . && rm -rf .git && git init
```

1. Enter the project directory
2. The environment will be set up automatically

### Setting up `devenv` & `direnv` 🛠️

For this project, `devenv` is required, and `direnv` is highly recommended for automatic environment activation when entering the project directory. 🚀

* [**Devenv** can be installed](https://devenv.sh/getting-started/#installation) following the official guide.

To install `direnv`, the following command can be used:

```bash
nix-env -i direnv
```

* [**Direnv** installation instructions](https://direnv.net/docs/installation.html) are available for various systems.

* [**Direnv** hook installation](https://direnv.net/docs/hook.html) is necessary for proper functionality.

To complete the setup, the following lines should be added to the end of your `.zshrc` file:

.zshrc

```bash
export PATH=$HOME/.nix-profile/bin:$PATH
eval "$(direnv hook zsh)"
```

With these tools in place, your development environment will be ready to go! 🎉

## Notes

### Multiple ways to use the environment

1. From devenv/direnv

If the environment is activated with devenv/direnv, the **environment is activated automatically**.

In case you don't have direnv, you can activate the environment manually with:

```bash
devenv shell
```

You can launch the same script as the container would be by running:

```bash
start
```

1. From the container

The devenv environment has also an embedded container runtime *(colima)* and docker.

> **The container starts with the `./start.sh` script.**

You can start the container runtime *(colima)* and the docker image with the following command:

```bash
docker_start
```

1. Without devenv or docker

The more manual approach is to activate the python environement manually.

In this case, you won't benefit from the devev commands that are explained in the next section.

```bash
# Make sure the virtual environment exists
uv venv
# Activate it
source .venv/bin/activate
# Syncronize packages
uv sync
```

### Integrated devenv commands

* start: run the ./start.sh script that is also launched when the container is started
* prune: remove the python environment, reinstall it from scratch, activates it, and install precommit hooks
* lint: run precommit hooks on all files
* gdiff: print rich git diff in terminal
* test: run pytest
* itest: run integration tests

### Python environment management 💡

The tool used to manage the Python environment is `uv`.

The documentation can be found here: [https://docs.astral.sh/uv/](https://docs.astral.sh/uv/)

Python version, alongside the packages, are defined in the `pyproject.toml` file.

#### Adding/removing packages

In order to add/remove a package, you will need to run the following command:

```bash
uv add **package_name**
uv remove **package_name**
```

In some cases, you will need to add an extra to the package. You can do this by running the following command:

```bash
# pip style (don't use it)
pip install fastapi[standard]
# uv style (use this instead)
uv add fastapi --extra standard
```

#### Environment synchronization

> **Note** This is done automatically when the devenv environment is activated.

Environment synchronization will remove all packages that are not defined in the `pyproject.toml` file, and add all packages that are defined in the `pyproject.toml` file.

To synchronize the environment, run the following command:

```bash
uv sync --all-extras
```

Environment synchronization is also performed when running a python script via uv:

```bash
uv run python -m my_script
# Is the same as
uv sync --all-extras
python -m my_script
```

### Act

Act is a tool to run GitHub Actions locally in a compact virtual machine.

#### VM Size

The first time that `act` is run, it will ask you the size of the virtual machine used.

> Make sure that you select at least the `Medium` machine, otherwise you won't have access to `curl` or base commands.

⚠️ If you made a mistake, you can delete the `actrc` file located at `~/.config/act/actrc` and run `act` again.

## License 📜

This project is licensed under the {{ cookiecutter.license }} License - see the [LICENSE](LICENSE) file for details.
