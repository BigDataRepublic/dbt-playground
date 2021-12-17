
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select 
    "Date" as measurement_date, 
    "Java" as java_popularity, 
    "Rust" as rust_popularity
from {{ ref('plang_pop') }}