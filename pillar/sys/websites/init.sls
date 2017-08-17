{% if salt.match.glob('apt*.lustfield.net') %}
nginx_sites: ['apt']
nginx_dirs: ['apt']

{% elif salt.match.glob('boot*.lustfield.net') %}
nginx_sites: ['pxeboot']

{% elif salt.match.glob('git.lustfield.net') %}
nginx_sites: ['git']

{% elif salt.match.glob('irc.lustfield.net') %}
nginx_sites: ['paste-service']

{% elif salt.match.glob('itel.lustfield.net') %}
nginx_sites: ['itel']

{% elif salt.match.glob('inalert*') %}
nginx_sites: ['inalert-api']
uwsgi-apps: ['inalert-api']
uwsgi-deps: ['uwsgi-plugin-python', 'python-bottle']

{% elif salt.match.glob('pbin.ngx.cc') %}
nginx_sites: ['ngxpbin']
uwsgi-apps: ['ngxpbin']
uwsgi-deps: ['uwsgi-plugin-python', 'python-bottle', 'python-redis', 'redis-server']

{% elif salt.match.glob('mlweb*') %}
nginx_sites: ['mlustfield-site', 'mlustfield-search', 'ip-service', 'api-mlustfield']
nginx_dirs: ['api-mlustfield']
uwsgi-apps: ['mlustfield-search', 'contact-form', 'api-mlustfield']
uwsgi-deps: ['uwsgi-plugin-python', 'python-bottle', 'python-redis', 'redis-server']

{% elif salt.match.glob('netbox*.lustfield.net') %}
nginx_sites: ['netbox']
uwsgi-apps: ['netbox']
uwsgi-deps: ['uwsgi-plugin-python']

{% endif %}
