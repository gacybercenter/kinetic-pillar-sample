#!yaml|gpg

gitfs_remote_configuration:
  url: https://github.com/georgiacyber/kinetic.git
  branch: master

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

## Specify your subnets.  The number of addresses for private, sfe, sbe, and oob should be
## equivalent to the number of addresses in management (and management should be at least a /24)
## The number of addresses in public should be equivalent to the largest amount of instances you
## could concievably create in your environment plus the number of addresses in management.  For
## example, if you plan to create 250 hosts, and management is a /24, public should be a /23.  The
## first /24 in your public subnet will be reserved and inaccessible to your hosts.

subnets:
  management: 10.0.1.0/24
  public: 10.1.0.0/23
  private: 10.2.0.0/24
  sfe: 10.3.0.0/24
  sbe: 10.4.0.0/24
  oob: 10.5.0.0/24

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

  reactor: |
    reactor: 
      - salt/beacon/pxe/inotify//var/www/html/pending_hosts:
        - salt://reactor/publish_pending_minion_id.sls
      - cache/mine/address/update:
        - salt://reactor/highstate_pxe.sls
