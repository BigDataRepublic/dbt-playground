{{ config(materialized='incremental', unique_key='query_start') }}

SELECT datid, usename, query, query_start
FROM pg_stat_activity
WHERE usename is not null