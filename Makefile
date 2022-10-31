format:
	pre-commit run --all-files

init:
	pre-commit install

test:
	robot --outputdir results/ tests/
