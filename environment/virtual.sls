virtual:
  cephmon:
    count: 3
    ram: 4096000
    cpu: 1
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - sfe: ens4
