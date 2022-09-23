<!-- Use for sorted flat list resources ValueSet, CodeSystem, SearchParameter, OperationDefinition  allows for highlighting new stuff using include parameter -->
{% assign my_types = "" %}
{%- for r_hash in site.data.artifacts -%}
  {% assign r_type = r_hash[0] | split: '/' | first %}
  {%- assign r = r_hash[1] -%}
  {%- if r.example -%}
    {% assign my_types =  my_types | append: ","s | append: r_type %}
    NAME: {{r_type}}
  {%- endif -%}
{% endfor %}
{% assign my_array = my_types | split: "," %}
{% assign my_array = my_array | sort | uniq %}

{{ my_array }}

<ul>
{% for i in my_array offset:1 %}
  {%- for r_hash in site.data.pages -%}
      {% assign r_type = r_hash[0] | split: '/' | first %}
      {%- assign r = r_hash[1] -%}
      {%- if r_type == i %}
          <li><a href="{{r_type}}">{{r.title}}</a></li>
      {% endif %}
  {%- endfor -%}
{% endfor %}
</ul>


{{ site.data | json }}