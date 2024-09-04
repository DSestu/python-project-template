{ pkgs, config, inputs,... }:
let
  # pinned terraform, because post 1.6 it's marked 'unfree' (BSL)
  pinned-terraform-nixpkgs = import inputs.nixpkgs-for-terraform { system = pkgs.stdenv.system; };
in
{
  packages = with pkgs; [
    colima # to provide a docker container runtimes
    docker
    uv # for python environment management
    act # for running github actions locally
    jq # for json manipulation, required to parse the docker daemon socket to use act
  ];

  # env.PATH = pkgs.lib.mkForce "";

  # Script for environment setup while onboarding. unset NIX_CC ensures that no weird
  # interactions happen when compiling the wheels
  scripts.init.exec = ''
    unset NIX_CC
    uv venv
  '';

  # scripts.ci.exec = "act";
  scripts.lint.exec = "pre-commit run --all-files";
  scripts.prune.exec = "rm -rf .venv && uv venv && source .venv/bin/activate && uv sync --all-extras && pre-commit install";
  scripts.start.exec = "./start.sh";
  scripts.tests.exec = "pytest app/tests";
  scripts.itests.exec = "pytest app/tests_integration";
  scripts.gdiff.exec = "git diff | dunk | less -R";

  # unset PYTHONPATH is necessary to ensure that libraries solely from the virtual environment are used
  enterShell = ''
    unset PYTHONPATH
    # export PATH=$DEVENV_PROFILE/bin # "Pure" mode
    colima start
    export DOCKER_HOST=$(docker context inspect colima | jq -r '.[0].Endpoints.docker.Host') # Get the docker daemon socket for act
    source ./.venv/bin/activate
    uv sync --all-extras
    pre-commit install
  '';
}
