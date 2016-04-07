#!/bin/sh

# * Install letsencrypt
# cd /usr/local/src
# sudo git clone https://github.com/letsencrypt/letsencrypt
# /usr/local/src/letsencrypt/letsencrypt-auto --help
#
# * generate ssl_dhparam
# sudo openssl dhparam 2048 -out /etc/letsencrypt/live/justaway.info/dhparam.pem
#
# * generate ssl_session_ticket_key
# sudo openssl rand 48 > ticket.key
# sudo mv ticket.key /etc/letsencrypt/live/justaway.info/
#
# * ct submit
# sudo sh /home/aska/justaway.info/scripts/ct-submit.sh

/usr/local/src/letsencrypt/letsencrypt-auto certonly --webroot -d justaway.info --webroot-path /home/aska/justaway.info/static -m s.aska.org@gmail.com --agree-tos
