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
