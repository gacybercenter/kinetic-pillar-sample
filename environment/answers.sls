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

## Specify your subnets.  The number of addresses for public, private, sfe, sbe, and oob should be
## equivalent to the number of addresses in management.  The number of addresses in public should be
## equivalent to or greater than the number of addresses in management.  The management field is for
## reference only; it is unparsed.

subnets:
  management: 10.0.1.0/24
  public: 10.1.0.0/16
  private: 10.2.0.0/24
  sfe: 10.3.0.0/24
  sbe: 10.4.0.0/24
  oob: 10.5.0.0/24

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  
  hF4DZlZ4hHScjHcSAQdAm3+a6ZVhtOTlg5jTa+9Bj9d6IyEzkVebjbtjbi7X+CMw
  IUUOr9YIcX2Y0Vb+leORHUXEmpB9DLiTRJzZauJ72Zkd9yXKlJsFXtYfDNX9zXRl
  0k4B06BS2NgITEehUNRvqKsAXMdVoZiBVJEnXIpdSAWa23GsgEHop6MjXy8tKwlC
  ofwrDxbcM1C7svwquoO87cL/8kXlfJig6NulU9jfssA=
  =RWLp
  -----END PGP MESSAGE-----  

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
