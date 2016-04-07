#!/bin/sh

# * Install letsencrypt
# cd /usr/local/src
# sudo git clone https://github.com/letsencrypt/letsencrypt
# /usr/local/src/letsencrypt/letsencrypt-auto --help
#
# * Generate ssl_dhparam
# sudo openssl dhparam 2048 -out /etc/letsencrypt/live/justaway.info/dhparam.pem
#
# * Generate ssl_session_ticket_key
# sudo openssl rand 48 > ticket.key
# sudo mv ticket.key /etc/letsencrypt/live/justaway.info/
#
# * Install st submit
# cd /usr/local/src
# sudo wget https://github.com/grahamedgecombe/ct-submit/archive/master.tar.gz
# sudo tar zxvf master.tar.gz
# cd ct-submit-master/
# sudo /usr/local/go/bin/go build
# sudo install -s -m755 ./ct-submit-master /usr/local/bin/ct-submit
#
# * Run ct submit
# sudo sh /home/aska/justaway.info/scripts/ct-submit.sh

/usr/local/src/letsencrypt/letsencrypt-auto certonly --webroot -d justaway.info --webroot-path /home/aska/justaway.info/static -m s.aska.org@gmail.com --agree-tos
