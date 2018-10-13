base:
  '*':
    - environment/answers
  'pxe':
    - environment/hosts
    - environment/pxe_bootstrap_beacon
  'salt*':
    - environment/ipmi_password
  'cache*':
    - environment/images
  'controller*':
    - environment/hosts
    - environment/images
