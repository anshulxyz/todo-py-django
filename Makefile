include .env
export

.PHONY: all
all: format lint test


.PHONY: format
format:
	poetry run isort .
	poetry run black .


.PHONY: lint
lint:
	poetry run mypy todo_app base


.PHONY: test
test:
	DJANGO_SETTINGS_MODULE=todo_app.test_settings poetry run pytest


.PHONY: clean
clean:
	find . | grep -E "(/__pycache__$|\.pyc$|\.pyo$)" | xargs rm -rf


.PHONY: run
run:
	poetry run python manage.py runserver


.PHONY: migrate
migrate:
	poetry run python manage.py migrate
