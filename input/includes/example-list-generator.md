{% assign my_types = "" %}
{%- for r_hash in site.data.artifacts -%}
  {% assign r_type = r_hash[0] | split: '/' | first %}
  {%- assign r = r_hash[1] -%}
  {%- if r.example -%}
    {% assign my_types =  my_types | append: ","s | append: r_type %}
  {%- endif -%}
{% endfor %}
{% assign my_array = my_types | split: "," %}
{% assign my_array = my_array | sort | uniq %}

{% assign lhtype = "" %}
{% for i in my_array offset:1 %}
   {% assign dhtype = i | split: '-'  | first %}
   {%- if lhtype != dhtype %}
    {% assign lhtype = dhtype %}
### {{ lhtype }}
   {% endif %}
  <ul>
  {%- for r_hash in site.data.pages -%}
      {% assign r_type = r_hash[0] | split: '/' | first %}
      {%- assign r = r_hash[1] -%}
      {% assign dtype = r_type | split: '-'  | first %}
      {%- if r_type == i %}
          <li><a href="{{r_type}}">{{r.title}}</a></li>
      {% endif %}
  {%- endfor -%}
  </ul>
{% endfor %}

