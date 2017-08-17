base:
  '*':
    - sys.files.apt
    - sys.files.gai
    - sys.files.pam
    - sys.files.tzdata
    - sys.pkgs.base
    - sys.pkgs.ferm
    - sys.pkgs.logcheck
    - sys.pkgs.ntp
    - sys.pkgs.salt
    - sys.pkgs.snap
    - sys.pkgs.ssh
    - sys.pkgs.sshguard
    - sys.pkgs.ssmtp
    - sys.pkgs.sudo
    - sys.pkgs.syslog
    - sys.users
  'apt*.lustfield.net':
    - sys.pkgs.acng
    - sys.pkgs.nginx
    - sys.pkgs.reprepro
  'backup.lustfield.net':
    - sys.pkgs.rsnapshot
    - sys.pkgs.glacier
  'boot*.lustfield.net':
    - sys.pkgs.nginx
    - sys.pkgs.tftpd
    - sys.remotes
  'endsalt.lustfield.net':
    - sys.pkgs.salt-master
  'git.lustfield.net':
    - sys.pkgs.gogs
    - sys.pkgs.nginx
  'inalert00.lustfield.net':
    - sys.pkgs.inalert-master
    - sys.pkgs.nginx
    - sys.pkgs.uwsgi
    - sys.files.uwsgi_webapps
  'inalert*.lustfield.net':
    - sys.pkgs.inalert
    - sys.pkgs.redis
  'irc.lustfield.net':
    - sys.pkgs.gauth
    - sys.misc.michael_lustfield
  'itel*.lustfield.net':
    # readme: itel
    - sys.pkgs.acmetool
    - sys.pkgs.elasticsearch
    - sys.pkgs.kibana
    - sys.pkgs.logstash
    - sys.pkgs.nginx
  'oob-endpoint*.lustfield.net':
    - sys.pkgs.gauth
    - sys.pkgs.mifi
    - sys.pkgs.openvpn
  'oob-ingress*.lustfield.net':
    - sys.pkgs.gauth
    - sys.pkgs.openvpn
  'pbin*.ngx.cc':
    - sys.pkgs.acmetool
    - sys.pkgs.nginx
    - sys.pkgs.uwsgi
    - sys.remotes
  'bot.ngx.cc':
    - sys.pkgs.limnoria
    - sys.users.ngxbot
  'proxmox*.lustfield.net':
    - sys.pkgs.proxmox
  'mt-pubweb*.lustfield.net':
    - sys.pkgs.gauth
    - sys.webapps.mlustfield
  'salt.lustfield.net':
    - sys.pkgs.salt-master
    - sys.pkgs.salt-cloud
    - sys.schedules.global_highstate
  'inventory.lustfield.net':
    - sys.pkgs.nginx
    - sys.pkgs.postgresql
    - sys.pkgs.uwsgi
    - sys.pkgs.virtualenv
    - sys.remotes
  'wlc.lustfield.net':
    - sys.pkgs.ubiquiti
