include:
  - sys.pkgs.udev

mifi-deps:
  pkg.installed:
    - pkgs:
      - usb-modeswitch

## files

/etc/network/interfaces.d/mifi:
  file.managed:
    - contents: |
        allow-hotplug eth1
        iface eth1 inet dhcp
            dns-search lustfield.net
            dns-nameservers 10.41.7.1
    - require:
      - pkg: mifi-deps
