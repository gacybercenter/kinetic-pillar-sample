#!yaml|gpg

## Specify your timezone
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.timezone.html

timezone: America/New_York

## Specify which keys you would like to be added to authorized_keys for the root user on ALL machines
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.ssh_auth.html

authorized_keys:
  AAAAC3NzaC1lZDI1NTE5AAAAIIKw+cBx9BBKcoXKLxMLVoGCD7znZqBjnMkaIipAikQJ:
    - encoding: ed25519
