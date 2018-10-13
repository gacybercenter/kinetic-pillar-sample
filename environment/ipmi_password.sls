#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  
  hF4DZlZ4hHScjHcSAQdAw/WboLQEL+DdaXBHR1Mw+BLdlmGFkrqwF6w6T/V7hQMw
  l+LvDs8RidD/8vBiGcN+8z8TkIVQS7wGU8Wp3ZC83MyjT79l4/4XxT80V8dg23ls
  0ooBo/nyHxGr3fsyDgvY7J+tr0/jxlSxf2Zplrj3p/6pvJ13px3G4yCjo5cQsRUc
  qHH+/KgTCHKspEBrkyweUjvFAxK82E5jA1xsN4FWb5B6pcZuhNzSuxjsTJOWH+3f
  Iy/YvZZDL6mwysUrUHH9tEt85RLSOADvui6hSEpt4nDIIbEfWeQjJgOi5n4=
  =UQCj
  -----END PGP MESSAGE-----
