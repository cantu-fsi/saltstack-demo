'base':
  '*':
    - sys.base.apt
    - sys.base.ferm
    - sys.base.snap
    - sys.base.sudo
    - sys.base.syslog
    - sys.base.tzdata
    - sys.pkgs.versions
    - sys.users
    - sys.users.ssmtp
    - sys.websites
    - sys.certs.dhparam
  'apt*.lustfield.net':
    - sys.pkgs.acng
  'boot*.lustfield.net':
    - sys.pkgs.tftpd
    - sys.remotes
  'endsalt.lustfield.net':
    - sys.pkgs.salt
  'inalert*.lustfield.net':
    - sys.services.inalert
  'itel.lustfield.net':
    - sys.pkgs.acmetool
    - sys.pkgs.logstash
    - sys.pkgs.elasticsearch
  'pbin.ngx.cc':
    - sys.pkgs.acmetool
    - sys.remotes
  'arn-*.lustfield.net':
    - sys.vpn
  'arn-scout*.lustfield.net':
    - sys.pkgs.udev
  'mlweb*.lustfield.net':
    - sys.pkgs.sphinxsearch
    - sys.certs.mlustfield
  'salt.lustfield.net':
    - sys.pkgs.salt
    - sys.pkgs.salt-cloud
  'snap.lustfield.net':
    - sys.services.glacier
  'netbox.lustfield.net':
    - sys.pkgs.postgresql
    - sys.pkgs.virtualenv
    - sys.remotes
