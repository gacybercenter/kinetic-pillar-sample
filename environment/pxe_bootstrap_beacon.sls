beacons:
    log:
      - file: /var/log/apache2/access.log
      - tags:
          bootstrap/request/event:
            regex: .*[0-9a-f]{32}\Z
