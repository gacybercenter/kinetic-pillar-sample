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
## The public subnet should be the already-existing network that you will utilize to grant
## external access to your instances.  You must choose a single IP address that will be assigned
## to your cache for the purpose of providing package caching services to your instances.
## Your start and end addresses are the addresses from your provider network that will be made
## available to your hosts

subnets:
  management: 10.0.1.0/24
  public: 
    network: 10.1.0.0/24
    start: 10.1.0.2
    end: 10.1.0.250
    gateway: 10.1.0.254
    dns: 8.8.8.8
    cache_ip: 10.1.0.1
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
      - salt/beacon/pxe/inotify//var/www/html/pending_hosts/*:
        - salt://reactor/publish_pending_minion_id.sls
      - cache/mine/address/update:
        - salt://reactor/highstate_pxe.sls
