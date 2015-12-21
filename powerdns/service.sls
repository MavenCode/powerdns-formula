{% from 'powerdns/map.jinja' import powerdns with context %}


include:
  - powerdns.pkg


{{ powerdns.service }}:
  service.running:
    - enable: true
    - require:
      - pkg: {{ powerdns.pkg }}
