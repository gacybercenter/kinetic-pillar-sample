virtual:
  cephmon:
    count: 1
    ram: 32768000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bindings:
        - management: ens3
        - sfe: ens4
