#!/bin/bash

/sbin/service httpd start
/sbin/service elasticsearch start
/sbin/service logstash start

#/bin/bash
tail -n0 -F /var/log/elasticsearch/*.log /var/log/logstash/logstash.log /var/log/httpd/error_log
