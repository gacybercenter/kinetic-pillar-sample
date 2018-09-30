#!yaml|gpg

gitfs_pillar: |
  ext_pillar:
    - git:
      - master https://github.com/georgiacyber/kinetic-pillar-sample.git:
        - env: base
  ext_pillar_first: true
  pillar_gitfs_ssl_verify: True

gitfs_remotes: |
  gitfs_remotes:
   - https://github.com/georgiacyber/kinetic.git:
      - saltenv:
        - base:
          - ref: master
  gitfs_saltenv_whitelist:
    - base

gitfs_pillar_configuration:
  url: https://github.com/georgiacyber/kinetic-pillar-sample.git
  branch: master

## Specify your timezone
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.timezone.html
timezone: America/New_York

## Specify which keys you would like to be added to authorized_keys for the root user on ALL machines
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.ssh_auth.html
authorized_keys:
  AAAAC3NzaC1lZDI1NTE5AAAAIIKw+cBx9BBKcoXKLxMLVoGCD7znZqBjnMkaIipAikQJ:
    encoding: ed25519

## Assorted salt master configuration options.  Each entry will be written to a separate file in /etc/salt/master.d
## https://docs.saltstack.com/en/latest/ref/configuration/master.html
master-config:
  default_top: |
    default_top: base

  file_roots: |
    file_roots:
      base:
        - /srv/salt/

  fileserver_backend: |
    fileserver_backend:
      - git
      - roots

  gitfs_update_interval: |
    gitfs_update_interval: 3

  hash_type: |
    hash_type: sha512

  interface: |
    interface: 0.0.0.0

  loop_interval: |
    loop_interval: 10

  ping_on_rotate: |
    ping_on_rotate: True

  state_output: |
    state_output: changes

  top_file_merging_strategy: |
    top_file_merging_strategy: same
