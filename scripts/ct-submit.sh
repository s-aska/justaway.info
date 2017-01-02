#!/bin/sh
KEY=/etc/letsencrypt/live/justaway.info/fullchain.pem
SCTS_DIR=/etc/letsencrypt/live/justaway.info/scts
CTSUBMIT=/usr/local/bin/ct-submit

sudo sh -c "$CTSUBMIT ct.googleapis.com/pilot \
<$KEY \
>$SCTS_DIR/pilot.sct"
sudo sh -c "$CTSUBMIT ct.googleapis.com/rocketeer \
<$KEY \
>$SCTS_DIR/rocketeer.sct"
