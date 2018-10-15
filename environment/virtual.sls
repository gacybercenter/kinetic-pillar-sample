virtual:
  cephmon:
    count: 3
    ram: 32768000
    cpu: 2
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - sfe: ens4
