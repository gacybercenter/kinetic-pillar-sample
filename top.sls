base:
  '*':
    - environment/answers
  'pxe':
    - environment/hosts
    - environment/pxe_bootstrap_beacon
  'salt*':
    - environment/ipmi_password
    - environment/hosts
  'cache*':
    - environment/images
    - environment/cache_mine
  'controller*':
    - environment/hosts
    - environment/images
