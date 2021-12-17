
-- Use the `ref` function to select from other models

select *
from {{ ref('lang_popularity_source') }}
where java_popularity < rust_popularity
