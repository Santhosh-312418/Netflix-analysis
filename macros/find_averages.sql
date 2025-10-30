{% macro find_averages(col1, col2) %} ({{ col1 }} + {{ col2 }}) / 2 {% endmacro %}
