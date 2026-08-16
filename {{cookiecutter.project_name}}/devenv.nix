{
  pkgs,
  config,
  ...
}: {
  # Toolchain only — python packages come from uv (pyproject.toml + uv.lock).
  languages.python = {
    enable = true;
    package = pkgs.python{{ cookiecutter.python_version_min.replace(".", "") }};
    uv.enable = true;
  };

  env.UV_INSTALL_DIR = "${config.env.DEVENV_ROOT}/bin";
  env.UV_PYTHON_INSTALL_DIR = "${config.env.DEVENV_ROOT}/bin";
  env.PRE_COMMIT_HOME = "${config.env.DEVENV_ROOT}/.pre-commit";

  scripts.start.exec = ''
    exec "${config.env.DEVENV_ROOT}/start.sh" "$@"
  '';
  scripts.tests.exec = ''
    exec uv run pytest "$@"
  '';
  scripts.pc.exec = ''
    exec uv run pre-commit run --all-files
  '';

  enterShell = ''
    # Avoid the nix python leaking into the uv venv / wheel builds
    unset PYTHONPATH
    unset NIX_CC

    uv sync

    if [ ! -f .git/hooks/pre-commit ]; then
      uv run pre-commit install --install-hooks
    fi
  '';
}
