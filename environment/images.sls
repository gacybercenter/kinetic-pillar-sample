#!yaml|gpg

images:
  ubuntu1604:
    name: ubuntu1604.raw
    remote_url: http://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-disk1.img
    remote_hash: http://cloud-images.ubuntu.com/xenial/current/SHA256SUMS
    remote_source_hash_name: xenial-server-cloudimg-amd64-disk1.img
    needs_conversion: true
    local_url: http://cache/images/ubuntu1604.raw
    local_hash: http://cache/images/checksums
    local_source_hash_name: ubuntu1604.raw
