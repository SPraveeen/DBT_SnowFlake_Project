{% set cols=['BOOKING_ID','BOOKING_AMOUNT','NIGHTS_BOOKED'] %}

select
{% for col in cols%}
    {{col}}
        {% if not loop.last %},{% endif %}
{% endfor %}
from {{ref('bronze_bookings') }}