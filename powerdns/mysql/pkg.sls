{% from 'powerdns/mysql/map.jinja' import mysql with context %}


{{ mysql.pkg }}:
  pkg.installed: []
