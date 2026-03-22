{{
    config
(
    materialized='incremental',
    unique_key='listing_id'
)
}}

select 
listing_id,listing_name,property_type,room_type,city,country,accomodates,bedrooms,bathrooms,price_per_night,
{{tag ('cast(price_per_night as int)') }}as price_per_night_tag,created_at
from ref {{ ref('bronze_listings') }}