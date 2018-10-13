base:
  '*':
    - environment/answers
  'pxe':
    - environment/hosts
  'cache*':
    - environment/ipmi_password
  'cache*':
    - environment/images
  'controller*':
    - environment/hosts
    - environment/images
