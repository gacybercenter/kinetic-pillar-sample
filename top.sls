base:
  '*':
    - environment/answers
  'pxe':
    - environment/hosts
    - environment/pxe_bootstrap_beacon
    - environment/pxe_mine
  'salt*':
    - environment/ipmi_password
    - environment/hosts
  'cache*':
    - environment/images
  'controller*':
    - environment/hosts
    - environment/images
