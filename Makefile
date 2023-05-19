export DOCKER_BUILDKIT	:=	1

.PHONY: lint-check lint-fix

lint-check:
	black --check --diff web_scraper
	autoflake --check -ri --ignore-init-module-imports --remove-all-unused-imports web_scraper
	mypy -p web_scraper

lint-fix:
	black web_scraper
	autoflake -ri --ignore-init-module-imports --remove-all-unused-imports web_scraper
	mypy -p web_scraper
