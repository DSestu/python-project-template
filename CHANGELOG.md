# Changelog

## [0.4.2](https://github.com/DSestu/python-project-template/compare/v0.4.1...v0.4.2) (2026-08-16)


### Miscellaneous Chores

* enhance cookiecutter template with options for PyPI release workflow and wheel building ([8fdfbf0](https://github.com/DSestu/python-project-template/commit/8fdfbf06078bdd1bb941463787549028406a9580))
* refine cookiecutter template for improved PyPI release process and wheel generation ([a1bf3ba](https://github.com/DSestu/python-project-template/commit/a1bf3baf753e8bb47cd5d11082f30d7e726be27c))
* update GitHub Actions workflows to use latest action versions for checkout, cache, release-please, and GitHub release ([45c7606](https://github.com/DSestu/python-project-template/commit/45c760638a37d03076739e0c9f3b635f7732fe29))

## [0.4.1](https://github.com/DSestu/python-project-template/compare/v0.4.0...v0.4.1) (2026-01-09)


### Miscellaneous Chores

* change variable name of projet folder ([ecbb5cd](https://github.com/DSestu/python-project-template/commit/ecbb5cd803d76e01b77bc79a8f11cfb40d401794))
* update dependencies in pyproject.toml and implement Entrypoint class in main.py for command handling ([7a10150](https://github.com/DSestu/python-project-template/commit/7a101509383cb3392862e037e7ddd7464fdd22dd))
* update release workflow to include publishing to PyPI ([7b20adb](https://github.com/DSestu/python-project-template/commit/7b20adb344289c67f7112a3467be462ffb59198c))


### Documentation

* add comprehensive README with project overview, setup instructions, and key features ([1136373](https://github.com/DSestu/python-project-template/commit/1136373ac4946f7d7eea84fc418eca51eed0b59f))
* add important note about PyPI project name conflicts to README; update README in project template with release process clarification; adjust test directory in CI workflow ([4423012](https://github.com/DSestu/python-project-template/commit/4423012c011d84d0de00d20523da4fa567331ae0))
* correct typos in README and update pull request workflow instructions for clarity; add release-please configuration file ([c77252a](https://github.com/DSestu/python-project-template/commit/c77252adef4eaeacf05edf1334dbc8c0b43ff503))

## [0.4.0](https://github.com/DSestu/python-project-template/compare/v0.3.11...v0.4.0) (2026-01-09)


### New features

* add main application logic and hello world functionality with tests ([4e88866](https://github.com/DSestu/python-project-template/commit/4e88866c36ea3dfb3838b93aa6f979939a2b14e2))
* dynamically_change_cookiecutter_defaults ([#32](https://github.com/DSestu/python-project-template/issues/32)) ([7a9224b](https://github.com/DSestu/python-project-template/commit/7a9224b73ea2b3213e60573d57a52f6653d5e226))


### Miscellaneous Chores

* add release-please manifest and update code validation workflow ([9b6ef7e](https://github.com/DSestu/python-project-template/commit/9b6ef7edf97c86881109a5224ad5afe9f0bcdc93))
* clean up project files by removing trailing newlines in configuration and README files for consistency ([3aef230](https://github.com/DSestu/python-project-template/commit/3aef230d19bffc230e6805e6433e704ef423f07e))
* enhance release workflow by adding checkout step and ensuring full fetch depth ([f207a68](https://github.com/DSestu/python-project-template/commit/f207a689701c93ed4d3b455583542f23112660fe))
* refine pre-commit configuration to exclude specific project files from hooks for improved consistency ([0e65ffb](https://github.com/DSestu/python-project-template/commit/0e65ffb5277ca21659ad0b9a302e73bd493de5b9))
* remove ruff pre-commit hooks from configuration to streamline setup and avoid conflicts with project files ([2ab2aa3](https://github.com/DSestu/python-project-template/commit/2ab2aa35e9a57a591654059c6bdd3695c0fdbf84))
* rename project_name in cookiecutter.json to "python-project-template" ([13ac6a5](https://github.com/DSestu/python-project-template/commit/13ac6a5e3494e1e9d6f8a0964193b3cb2d7939bd))
* update configuration files and README for consistency and clarity ([c07acea](https://github.com/DSestu/python-project-template/commit/c07acea40ad1824dd8c1d13e5307a288e31bf1bc))
* update cookiecutter.json and pyproject.toml for project name consistency, enhance README with additional setup instructions, and remove outdated TEMPLATE_STRUCTURE.md ([a70704b](https://github.com/DSestu/python-project-template/commit/a70704b5dda6d91cdbff026e75c7259d70d226da))
* update pre-commit configuration to exclude GitHub workflows from specific hooks for improved consistency ([1f29c03](https://github.com/DSestu/python-project-template/commit/1f29c03d854270ce198dad4169baabfba1400be2))
* update project name in pyproject.toml and simplify README content for clarity ([1c7fda7](https://github.com/DSestu/python-project-template/commit/1c7fda7077f5ed82ac7f48d65ee9fc53d7034d34))
* update pyproject.toml to include authors and project URLs ([3f6a8ce](https://github.com/DSestu/python-project-template/commit/3f6a8cefc978304dcf4203c36b0f9c628e5cde19))


### Documentation

* add section on easy code quality checks to README, including instructions for activating, deactivating, and running pre-commit hooks ([fb832da](https://github.com/DSestu/python-project-template/commit/fb832da2d0d3beb63e10ffdf3630270bfd980ae4))
* enhance README with GitHub repository setup instructions and improve formatting for clarity; update code validation workflow to include test execution ([aa1465f](https://github.com/DSestu/python-project-template/commit/aa1465fecabef11c235952a22a97f0065b2a0f51))
* enhance README with installation instructions for uv and cookiecutter usage ([8bad087](https://github.com/DSestu/python-project-template/commit/8bad087b047990781400b9180b5edabdead58475))
* expand README with quick start guide, detailed setup instructions for automated releases, and PyPI publishing configuration ([e46d439](https://github.com/DSestu/python-project-template/commit/e46d4396452ec7d5d67ba50c46fe718d7b30a2be))
* update README to clarify project goals, features, and usage instructions for the CookieCutter template ([d874702](https://github.com/DSestu/python-project-template/commit/d8747026e8592f83778c61fef1a06054a3b10ec4))
* update README to improve formatting of key features section for clarity and consistency ([57d9f02](https://github.com/DSestu/python-project-template/commit/57d9f0236991211888a9ca1e786eab1d4c228368))

## [0.3.11](https://github.com/DSestu/python-project-template/compare/v0.3.10...v0.3.11) (2026-01-09)


### Miscellaneous Chores

* update pre-commit configuration to exclude GitHub workflows and enhance release workflow with version change and publishing steps ([3d27e21](https://github.com/DSestu/python-project-template/commit/3d27e21e2f83eca6f879b2c666b8d13436e3076c))

## [0.3.10](https://github.com/DSestu/python-project-template/compare/v0.3.9...v0.3.10) (2026-01-09)


### Miscellaneous Chores

* update project name in pyproject.toml to "python-project-template_test" ([85d293f](https://github.com/DSestu/python-project-template/commit/85d293f700d9618e3cb8e248ad96ffe0b0da38da))
* update project name in pyproject.toml to "python-project-template_test" ([#28](https://github.com/DSestu/python-project-template/issues/28)) ([a20883f](https://github.com/DSestu/python-project-template/commit/a20883f47f070b5a09a586b54629ee3127eb5fea))

## [0.3.9](https://github.com/DSestu/python-project-template/compare/v0.3.8...v0.3.9) (2026-01-09)


### Miscellaneous Chores

* enhance release workflow to include version change and build steps for PyPI publishing ([7c656e0](https://github.com/DSestu/python-project-template/commit/7c656e08ed25f79460a2ce7021de03cf22115bdc))
* enhance release workflow to include version change and build steps for PyPI publishing ([#26](https://github.com/DSestu/python-project-template/issues/26)) ([fbb2721](https://github.com/DSestu/python-project-template/commit/fbb272165258ffdbb4cc9c74bb2e7038412d74a8))

## [0.3.8](https://github.com/DSestu/python-project-template/compare/v0.3.7...v0.3.8) (2026-01-09)


### Miscellaneous Chores

* enhance release workflow to handle versioning and improve PyPI publishing steps ([72d1ae1](https://github.com/DSestu/python-project-template/commit/72d1ae169a09f3881e03085a5e480208fb8d652f))
* enhance release workflow to handle versioning and improve PyPI publishing steps ([#24](https://github.com/DSestu/python-project-template/issues/24)) ([80db5f6](https://github.com/DSestu/python-project-template/commit/80db5f6f9237a249fd0c50241c9301e6eea0c966))

## [0.3.7](https://github.com/DSestu/python-project-template/compare/v0.3.6...v0.3.7) (2026-01-09)


### Miscellaneous Chores

* refactor release workflow to add separate job for publishing to PyPI ([b4a5c12](https://github.com/DSestu/python-project-template/commit/b4a5c12c2788892b1581e3f57047a42aa28a2315))
* refactor release workflow to add separate job for publishing to PyPI ([#22](https://github.com/DSestu/python-project-template/issues/22)) ([b5dae30](https://github.com/DSestu/python-project-template/commit/b5dae30b4f57e01c28b5ba731d3bf05f55757e4a))
* update release workflow permissions to allow write access for contents ([329e234](https://github.com/DSestu/python-project-template/commit/329e23422cf00ba26bb0fb5602ac1cee2eeef5ba))
* update release workflow permissions to allow write access for contents ([#21](https://github.com/DSestu/python-project-template/issues/21)) ([a9ba9f4](https://github.com/DSestu/python-project-template/commit/a9ba9f4680f17100fe7dbe36da0e37bc72a63b8b))
* update release workflow to include environment and permissions for PyPI publishing ([3f7d7ef](https://github.com/DSestu/python-project-template/commit/3f7d7ef806f1a2c8aef23ade6c216d80410238db))
* update release workflow to include environment and permissions for PyPI publishing ([#20](https://github.com/DSestu/python-project-template/issues/20)) ([177d3b8](https://github.com/DSestu/python-project-template/commit/177d3b8d5de033d5c618712057fc146d9581a381))

## [0.3.6](https://github.com/DSestu/python-project-template/compare/v0.3.5...v0.3.6) (2026-01-09)


### Miscellaneous Chores

* update release workflow permissions to include id-token ([100ade7](https://github.com/DSestu/python-project-template/commit/100ade722edbc733d2c8c4cd3be1252473dbd0c1))
* update release workflow permissions to include id-token ([#18](https://github.com/DSestu/python-project-template/issues/18)) ([0d447df](https://github.com/DSestu/python-project-template/commit/0d447df5241b81217faf8548cfcd166a885cf495))

## [0.3.5](https://github.com/DSestu/python-project-template/compare/v0.3.4...v0.3.5) (2026-01-09)


### Miscellaneous Chores

* add PyPI publishing step to release workflow ([15e603a](https://github.com/DSestu/python-project-template/commit/15e603a55ec595cc9a30b87e81ef563b16b011cf))
* add PyPI publishing step to release workflow ([#16](https://github.com/DSestu/python-project-template/issues/16)) ([db6d9f8](https://github.com/DSestu/python-project-template/commit/db6d9f82efad473786477465426cc923023edff2))

## [0.3.4](https://github.com/DSestu/python-project-template/compare/v0.3.3...v0.3.4) (2026-01-09)


### Miscellaneous Chores

* update project metadata in pyproject.toml ([46ed9aa](https://github.com/DSestu/python-project-template/commit/46ed9aa3a8b29b743ad84216eead7c929c6ad7d5))
* update project metadata in pyproject.toml ([#14](https://github.com/DSestu/python-project-template/issues/14)) ([0bb8e68](https://github.com/DSestu/python-project-template/commit/0bb8e686cd0fd91e4980c38052ed484833a2dcff))

## [0.3.3](https://github.com/DSestu/python-project-template/compare/v0.3.2...v0.3.3) (2026-01-09)


### Miscellaneous Chores

* simplify release-please configuration by removing version-file entry ([c13e664](https://github.com/DSestu/python-project-template/commit/c13e66449d09309d53444851475a05250fac7017))
* simplify release-please configuration by removing version-file entry ([#12](https://github.com/DSestu/python-project-template/issues/12)) ([76193b9](https://github.com/DSestu/python-project-template/commit/76193b9167500060096a996219cfc57af5d6c8e7))

## [0.3.2](https://github.com/DSestu/python-project-template/compare/v0.3.1...v0.3.2) (2026-01-09)


### Bug fixes

* update package version from tag ([bddc2f8](https://github.com/DSestu/python-project-template/commit/bddc2f891f6eea85ac58dd6bbfeda9376e81b856))
* update package version from tag ([7d353cc](https://github.com/DSestu/python-project-template/commit/7d353cc389ecd3ac2f247efe7ad2cbb3d84e3a67))

## [0.3.1](https://github.com/DSestu/python-project-template/compare/v0.3.0...v0.3.1) (2026-01-09)


### Miscellaneous Chores

* update dependencies and refine GitHub Actions workflows for wheel building and release ([1f07dda](https://github.com/DSestu/python-project-template/commit/1f07dda4998e7809b6e56b768aec5d8fdd6789dc))
* update dependencies and refine GitHub Actions workflows for wheel building and release ([bafe077](https://github.com/DSestu/python-project-template/commit/bafe07723f41a033c8880000e50e6ae6b7d8f594))

## [0.3.0](https://github.com/DSestu/python-project-template/compare/v0.2.0...v0.3.0) (2026-01-09)


### New features

* Enhance GitHub Actions workflow to build and upload wheels after release creation ([d2596f4](https://github.com/DSestu/python-project-template/commit/d2596f4b00f45b3439888c6bf2df8a0086272094))
* Enhance GitHub Actions workflow to build and upload wheels after release creation ([c55fb8d](https://github.com/DSestu/python-project-template/commit/c55fb8de07cca609256de5995e107e00d4f0e58e))

## [0.2.0](https://github.com/DSestu/python-project-template/compare/v0.1.1...v0.2.0) (2026-01-09)


### New features

* Add GitHub Actions workflows for building wheels and pull request title validation; remove obsolete release preparation workflow ([64a4be5](https://github.com/DSestu/python-project-template/commit/64a4be5d099793b5f4891e1e69266ab2556da5ea))
* Add GitHub Actions workflows for building wheels and pull request title validation; remove obsolete release preparation workflow ([b151780](https://github.com/DSestu/python-project-template/commit/b151780a7756169fe26df57fa03afa75b3e40942))

## [0.1.1](https://github.com/DSestu/python-project-template/compare/0.1.0...v0.1.1) (2026-01-09)


### Code refactoring

* GitHub Actions workflow for release preparation; comment out sections for clarity ([#2](https://github.com/DSestu/python-project-template/issues/2)) ([10bcf91](https://github.com/DSestu/python-project-template/commit/10bcf91f86ac786702e3b0fae6d4619f919d929a))
