import sys
import subprocess


def get_os() -> str:
    return sys.platform


def is_uv_installed() -> bool:
    try:
        subprocess.run(
            ["uv", "--version"],
            capture_output=True,
            check=True,
        )
        return True
    except subprocess.CalledProcessError:
        return False


def install_uv() -> None:
    if get_os() == "win32":
        subprocess.run(
            [
                "powershell",
                "-ExecutionPolicy",
                "ByPass",
                "-c",
                "irm https://astral.sh/uv/install.ps1 | iex",
            ]
        )
    else:
        subprocess.run("curl -LsSf https://astral.sh/uv/install.sh | sh", shell=True)


if __name__ == "__main__":
    if is_uv_installed():
        print("uv is installed")
    else:
        print("uv is not installed, do you want to install it? (y/n)")
        if input() == "y":
            install_uv()
            if is_uv_installed():
                print("uv is installed")
            else:
                print("uv is not installed, exiting...")
                sys.exit(1)
