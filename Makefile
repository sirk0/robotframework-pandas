.PHONY: help
help:  ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort\
	  | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: doc
doc:  ## Generate robot documentation.
	python -m robot.libdoc PandasLibrary/ doc/PandasLibrary.html

.PHONY: format
format:  ## Run pre-commit formatters and linters.
	pre-commit run --all-files

.PHONY: init
init:  ## Initialise repo. Run this command only once.
	pre-commit install

.PHONY: test
test:  ## Run robot tests.
	robot --outputdir results/ tests/
