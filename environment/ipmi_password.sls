#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  
  hF4DZlZ4hHScjHcSAQdAxjSxJ5j5uuXq6cgncPgy43AF7dNwfY3gSj+jR3qXgWUw
  0Y2DCGcHc0l966v7mCK6rtQFB49W8WMiRNmBUULrQUf6Y+blSHujY1ocVheE7Lra
  0k4BMjATjhw89jYmWEmqGaCfRruyTKpCbpJ1rGF+jxMQtA1LfxcHrgZeF83Gdcqx
  kzWAwpCTREUg6eBkvUyrTPEE3ti7QWBs/q3OfYEb0DI=
  =sIzJ
  -----END PGP MESSAGE-----
