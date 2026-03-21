{% macro multiply(x,y,precison)%}
    round({{x}}*{{y}},{{precision}})
{% endmacro %}