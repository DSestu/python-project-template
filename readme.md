## Python Project Template 🚀

A cutting-edge Python project template has been designed. This repository aims to make the development experience smooth, efficient, and consistent across different machines and time periods.

## Introduction 🌟

The template is built with a focus on minimal manual interaction for environment synchronization, allowing developers to dive straight into coding. Options for working in a local isolated environment or within a Docker container are provided.

## Core Technologies 🛠️

The following technologies are leveraged:

- **devenv / direnv**: Orchestrates the macro development environment
- **docker**: Enables project containerization
- **colima**: Facilitates local Docker containerization
- **uv**: Manages Python environments with Rust-based efficiency
- **act**: Runs GitHub Actions locally in a compact virtual machine

## Key Features ✨

- **Auto-sync Packages** 🔄: `uv sync` automatically manages package additions or removals
- **Auto-activate Environments** 🌈: Seamless environment activation with devenv + direnv
- **Docker Ready** 🐳: Projects can be run in a container with ease
- **Local Isolation** 🏠: Projects can be executed in a local isolated environment
- **Local GitHub Actions** 🚀: Workflows can be tested before pushing with `act`
- **Testing Suite** 🧪: Preconfigured with Pytest and GitHub Actions
- **Code Formatting** 🧹: Code cleanliness is maintained with Ruff

# Instructions

## Getting Started 🚀

1. Make sure you have `devenv` and `direnv` installed.
2. Clone this repository
3. Enter the project directory
4. The environment will be set up automatically 

## Setup `devenv` & `direnv`

You will need `devenv`, and optionally *(but recommended)* `direnv` for automatic environment activation upon entering the project directory.

* [**Devenv** installation](https://devenv.sh/getting-started/#installation)

```bash
nix-env -i direnv
```

* [**Direnv** installation](https://direnv.net/docs/installation.html)

* [**Direnv** hook installation](https://direnv.net/docs/hook.html)

Add this at the end of your `.zshrc` file:

```.zshrc
export PATH=$HOME/.nix-profile/bin:$PATH
eval "$(direnv hook zsh)"
```

# Notes

## Python environment management 💡

The tool used to manage the Python environment is `uv`.

The documentation can be found here: [https://docs.astral.sh/uv/](https://docs.astral.sh/uv/)

Python version, alongside the packages, are defined in the `pyproject.toml` file.

### Adding/removing packages

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

### Environment synchronization

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

## Act

Act is a tool to run GitHub Actions locally in a compact virtual machine.

### VM Size

The first time that `act` is run, it will ask you the size of the virtual machine used.

> Make sure that you select at least the `Medium` machine, otherwise you won't have access to `curl` or base commands.

⚠️ If you made a mistake, you can delete the `actrc` file located at `~/.config/act/actrc` and run `act` again.

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Happy coding! 🎉 Remember, with great power comes great responsibility... to write awesome code! 💻✨
# Setup

sh <(curl -L https://nixos.org/nix/install) --no-daemon
nix-env -iA devenv -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable
nix-env -i direnv

devenv init