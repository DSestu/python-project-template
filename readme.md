# Introduction
This repository serves as a template for Python projects with environment management capabilities.

The objective of this template is to enable the execution of a Python project with precise environment replication across various machines and time periods.

The template's design philosophy emphasizes minimizing manual interaction for environment synchronization processes.

Furthermore, the project's execution is facilitated in either a local isolated environment or within a Docker container.

The project is based on the following technologies:

* devenv / direnv: responsible for the synchronization of the macro development environment. This include the automatic installation of:
  * docker: for the containerization of the project
  * colima: for the local docker containerization
  * uv: for the management of the python environment
  * act: an additional tool that allows to run github actions locally in a small virtual machine
* uv: the rust-based tool for the management of the python environments

## Features

**The big one:**

**The `uv sync` command is automatically utilized for package addition or removal prior to project execution or upon terminal entry into the project directory**

* 🔄 Auto-activation of environments with devenv + direnv

* 🐳 Ability to run the project in a docker container

* 🏠 Ability to run the project in a local isolated environment

* 🚀 Ability to run github actions locally

* 🧪 Preconfigured with Pytest and Github Actions

* 🧹 Preconfigured with Ruff code formatter

# Setup

https://devenv.sh/getting-started/#installation


sh <(curl -L https://nixos.org/nix/install) --no-daemon
nix-env -iA devenv -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable
nix-env -i direnv

devenv init