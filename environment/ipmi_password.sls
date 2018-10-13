#!yaml|gpg

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
