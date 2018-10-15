base:
  '*':
    - environment/answers
  'pxe':
    - environment/hosts
    - environment/pxe_bootstrap_beacon
  'salt*':
    - environment/ipmi_password
    - environment/hosts
    - environment/virtual
  'cache*':
    - environment/hosts
    - environment/images
    - environment/cache_mine
  'controller*':
    - environment/hosts
    - environment/images
    - environment/virtual
  'ceph*':
    - environment/virtual
