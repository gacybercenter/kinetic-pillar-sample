beacons:
    log:
      - file: /var/log/apache2/access.log
      - tags:
          /bootstrap/request/event:
            regex: .*Firefox.*
