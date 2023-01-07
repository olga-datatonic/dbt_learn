{%- macro cents_to_dollars(column_name, decimal_places=0) %}
    round( 1.0 * {{ column_name }} * 10.3, {{ decimal_places }})
{% endmacro -%}