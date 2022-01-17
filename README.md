

Setup
-----
Run steps in `./setup.sh` to install DBT in a virtual env in your directory (.venv/)

Either move the profile to ~/.dbt or

    export DBT_PROFILES_DIR=profiles_dir

or

    .venv/bin/dbt --profiles-dir profiles_dir run


Prepare the database
--------------------


    docker-compose up -d

visit http://localhost:8080/ and log in to `PostgreSQL` as user `playground` using password `playground` to access database `playground`. The username/password is also available in [the dbt profile configuration](profiles_dir/profiles.yml).


Load some initial data
-----------------------

    .venv/bin/dbt seed

verify in the web interface that you have data.

Random hints
------------

See your queries using http://localhost:8080/?pgsql=db&username=playground&db=postgres&ns=pg_catalog&select=pg_stat_activity
