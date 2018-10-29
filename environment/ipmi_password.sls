#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  
  hF4D8goHq7/fKWYSAQdAXtMBX/me5fyWrLiMZI1QkcdnkH+ImXRqlI19JtgXgzow
  cinvQE9oiyLqayrZAiESei2RMnriOvILg0yyIrKGFYia+nj59ysoS3vwnV/w6kOL
  0k4BFEA42XLGRTqJzjH5NMxwNMHLy3Ozb+G1GOIBQSbMsVocokzl7uoaOnzGLRzf
  LlsHHwLn/US90DK1bIscplTbQv9TGPObn6Wk4QfNGq4=
  =FRJ1
  -----END PGP MESSAGE-----
