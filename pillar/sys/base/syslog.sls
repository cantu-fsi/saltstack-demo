{% if salt.match.glob('log.lustfield.net') %}
syslog_conf: salt://etc/rsyslog/hosts.conf
{% else %}
syslog_conf: salt://etc/rsyslog/log.conf
{% endif %}
