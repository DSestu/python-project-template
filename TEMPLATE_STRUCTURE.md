# CookieCutter Template Structure

This repository has been converted to a CookieCutter template. Here's how it's organized:

## Template Files

All template files are located in the `{{cookiecutter.project_slug}}/` directory. When someone uses this template with CookieCutter, the contents of this directory will be copied and all `{{ cookiecutter.variable_name }}` placeholders will be replaced with the user's input.

## Original Files

The original project files (in the root directory, like `app/`, `pyproject.toml`, etc.) are kept for reference. You can:

1. **Keep them** - Useful for testing and reference
2. **Remove them** - Clean up the repository to only contain the template
3. **Move them** - Archive them elsewhere

## Using the Template

To use this template, run:

```bash
cookiecutter .
```

Or from a remote repository:

```bash
cookiecutter https://github.com/your-username/python-project-template
```

## Template Variables

All variables are defined in `cookiecutter.json`. When generating a project, CookieCutter will prompt for:

- `project_name`: Full project name
- `project_slug`: Directory/package name (lowercase, hyphens)
- `project_description`: Project description
- `version`: Initial version
- `python_version_min`: Minimum Python version
- `python_version_max`: Maximum Python version
- `author_name`: Author name
- `author_email`: Author email
- `copyright_year`: Copyright year
- `license`: License type (MIT, Apache-2.0)
- `port`: FastAPI port number
- `app_name`: Application directory name

## Testing the Template

To test the template locally:

```bash
cookiecutter . --no-input  # Uses defaults
# or
cookiecutter .  # Interactive prompts
```

Then check the generated directory to ensure all variables were replaced correctly.
