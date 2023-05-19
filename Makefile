export DOCKER_BUILDKIT	:=	1

.PHONY: lint-check lint-fix

lint-check:
	black --check --diff app
	autoflake --check -ri --ignore-init-module-imports --remove-all-unused-imports app
	mypy -p app

lint-fix:
	black app
	autoflake -ri --ignore-init-module-imports --remove-all-unused-imports app
	mypy -p app
