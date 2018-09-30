#!yaml|gpg

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
  
  gitfs_pillar: |
    ext_pillar:
      - git:
        - master https://github.com/georgiacyber/kinetic-pillar-sample.git:
          - env: base
    ext_pillar_first: true
    pillar_gitfs_ssl_verify: True
  
  gitfs_remotes: |
    gitfs_remotes:
    {% for remote in pillar['gitfs_remotes'] %}
     - [remote]:
    {% endfor %}
        - saltenv:
          - base:
            - ref: master
    gitfs_saltenv_whitelist:
      - base
  
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
