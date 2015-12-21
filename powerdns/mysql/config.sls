{% from 'powerdns/map.jinja' import powerdns with context %}
{% from 'powerdns/mysql/map.jinja' import mysql with context %}


include:
  - powerdns.config
  - powerdns.service


{{ mysql.config }}:
  file.managed:
    - makedirs: true
    - mode: 644
    - template: jinja
    - require:
      - file: {{ powerdns.config }}
    - watch_in:
      - service: {{ powerdns.service }}
    - contents: |
{%- for k, v in mysql.settings | dictsort %}
       {{ k }}={{ v -}}
{% endfor %}
