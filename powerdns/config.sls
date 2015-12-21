{% from 'powerdns/map.jinja' import powerdns with context %}


include:
  - powerdns.service


{{ powerdns.config }}:
  file.managed:
    - makedirs: true
    - mode: 644
    - template: jinja
    - watch_in:
      - service: {{ powerdns.service }}
    - contents: |
{%- for k, v in powerdns.settings | dictsort %}
        {{ k }}={{ v -}}
{% endfor %}
