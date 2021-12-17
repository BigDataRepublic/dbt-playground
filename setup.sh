#!/bin/bsah
set -e
export POETRY_VIRTUALENVS_IN_PROJECT=true
export DBT_PROFILES_DIR=./profiles_dir

poetry install
.venv/bin/dbt --version

docker-compose pull

.venv/bin/dbt --profiles-dir profiles_dir seed
