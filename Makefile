VERSION := $(shell python setup.py --version)

.PHONY: help
help:  ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort\
	  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build:  ## Package project installation.
	python -m build

.PHONY: clean
clean:  ## Clean generated files.
	rm -rvf build dist doc results src/*.egg-info

doc:  ## Generate robot documentation.
	python -m robot.libdoc --version="$(VERSION)" src/PandasLibrary/ doc/PandasLibrary.html

.PHONY: format
format:  ## Run pre-commit formatters and linters.
	pre-commit run --all-files

.PHONY: init
init:  ## Initialise repo. Run this command only once.
	pre-commit install

.PHONY: install
install:  ## Install this package.
	pip install .

.PHONY: report
report:  ## Open last HTML test report.
	open results/report.html

.PHONY: test
test:  ## Run robot tests.
	robot --outputdir results/ tests/

.PHONY: uninstall
uninstall:  ## Uninstall this package.
	pip uninstall --yes robotframework-pandas
