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

## Getting Started 🚀

1. Clone this repository
2. Enter the project directory
3. The environment will be set up automatically

## Pro Tip 💡

The `uv sync` command runs automatically when:
- The project is about to be executed
- The project directory is entered in the terminal

This ensures the environment is always up-to-date without manual intervention.

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Happy coding! 🎉 Remember, with great power comes great responsibility... to write awesome code! 💻✨
# Setup

https://devenv.sh/getting-started/#installation


sh <(curl -L https://nixos.org/nix/install) --no-daemon
nix-env -iA devenv -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable
nix-env -i direnv

devenv init