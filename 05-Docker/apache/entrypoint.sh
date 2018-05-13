#!/bin/bash

# cron
cd /etc/ && crontab -l > copycron 2>&1
echo "* * * * * root cp /etc/crontab  /shared/crontab-\$(date +\"%Y_%m_%d__%H_%m\")" > copycron
crontab copycron
crontab -l
crond &

echo "is cron running?"
ps -aux

echo "running apache"
# running apache
/usr/sbin/httpd -DFOREGROUND
