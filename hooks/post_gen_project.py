import subprocess


subprocess.run(["git", "init"])
subprocess.run(["git", "add", "."])
subprocess.run(["git", "commit", "-m", "Cookiecutter initial commit"])
subprocess.run(["uv", "sync"])
