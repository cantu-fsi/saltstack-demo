{% if salt.match.glob('boot*.lustfield.net') %}
git_remotes:
  - remote: http://git.lustfield.net/pubweb/pxeboot.git
    local: /srv/webapps/pxeboot

{% elif salt.match.glob('pbin.ngx.cc') %}
git_remotes:
  - remote: https://github.com/ngx/pbin.git
    local: /srv/webapps/ngxpbin
    req_in:
      - "service: nginx"
      - "service: uwsgi"

{% elif salt.match.glob('netbox*.lustfield.net') %}
git_remotes:
  - remote: http://git.lustfield.net/pubweb/netbox.git
    local: /srv/webapps/netbox
    req_in:
      - "service: nginx"
      - "service: uwsgi"

{% endif %}
