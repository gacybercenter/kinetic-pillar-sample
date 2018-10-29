#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  
  hF4D7HmUMU1FdPcSAQdA6+2UA6vzdrdVt6MIZAw3sTf9kPmLlFJrPuQ24zmPNCww
  PA1Mo5wDVA7Q039CvoAhtxWpSmbQGQOQD1FbxV/ub6f6DGN+CD92bE+vB6RAiGug
  0k4B9NXxNaKwB54F7AvlUH+L9HMal/s8XQOosJWLW/m5hV+MkFcWOjzuRmZzeEpR
  yBjet560ev+bNImcbSoQPzp2rnGP7M/YKULvI/SrSLI=
  =Xcr3
  -----END PGP MESSAGE-----
