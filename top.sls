base:
  '*':
    - environment/answers
  'pxe':
    - environment/hosts
  'salt*':
    - environment/ipmi_password
  'cache*':
    - environment/images
  'controller*':
    - environment/hosts
    - environment/images
