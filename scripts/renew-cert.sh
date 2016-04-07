#!/bin/sh

# crontab
# 0 4 8 * * /home/aska/justaway.info/scripts/renew-cert.sh

/usr/local/src/letsencrypt/letsencrypt-auto certonly --webroot -d justaway.info --webroot-path /home/aska/justaway.info/static --renew-by-default
/home/aska/justaway.info/scripts/ct-submit.sh
