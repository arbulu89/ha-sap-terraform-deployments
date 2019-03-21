cluster:
  name: 'hacluster'
  init: 'hana01'
  interface: 'eth0'
  unicast: True
  watchdog:
    module: softdog
    device: /dev/watchdog
  sbd:
    device: '/dev/sda'
  resource_agents:
    - SAPHanaSR
  configure:
    method: 'update'
    template:
      source: /srv/salt/hana/templates/performance_optimized.j2
      parameters:
        sid: prd
        instance: 00
        virtual_ip: 10.0.1.50
        virtual_ip_mask: 255.255.0.0
        platform: aws
        prefer_takeover: true
        auto_register: false
