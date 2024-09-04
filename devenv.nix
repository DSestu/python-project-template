{ pkgs, config, inputs,... }:
let
  # pinned terraform, because post 1.6 it's marked 'unfree' (BSL)
  pinned-terraform-nixpkgs = import inputs.nixpkgs-for-terraform { system = pkgs.stdenv.system; };
in
{
  packages = with pkgs; [
    colima # to provide a docker container runtimes
    docker # for docker commands
    uv # for python environment management
    act # for running github actions locally
    jq # for json manipulation, required to parse the docker daemon socket to use act
  ];

  dotenv.disableHint = true;
  env.DD_TRACE_ENABLED = 0;

  # Script for environment setup while onboarding. unset NIX_CC ensures that no weird
  # interactions happen when compiling the wheels
  scripts.init.exec = ''
    unset NIX_CC
    # curl --proto '=https' --tlsv1.2 -LsSf https://github.com/astral-sh/uv/releases/download/0.4.2/uv-installer.sh | sh
    uv venv
  '';

  scripts.ci.exec = "act";
  scripts.lint.exec = "ruff check . --fix && ruff format .";
  scripts.prune.exec = "rm -rf .venv && uv venv && source .venv/bin/activate";
  scripts.start.exec = "./docker_start.sh";
  scripts.tests.exec = "pytest tests";
  scripts.itests.exec = "pytest tests_integration";

  # unset PYTHONPATH is necessary to ensure that libraries solely from the virtual environment are used
  enterShell = ''
    unset PYTHONPATH
    # colima start
    # export DOCKER_HOST=(docker context inspect colima | jq -r '.[0].Endpoints.docker.Host')
    . ./.venv/bin/activate
    uv sync
  '';

  # exitShell = ''
  #   echo "Deactivating development environment..."
  #   # deactivate
  #   # Add any other commands you want to run on exit
  # '';
}