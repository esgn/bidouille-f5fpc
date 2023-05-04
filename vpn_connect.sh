#!/usr/bin/env bash

CONTENT=$(wget --timeout=5 neverssl.com -q -O -)
if [ -z "$CONTENT" ]
then
  echo "reconnecting the hard way"
  /usr/local/bin/f5fpc --stop
  /usr/local/bin/f5fpc -s -x -t https://vpn_server.domain.com -r /etc/ssl/certs/machine.crt -k /etc/ssl/private/machine.pem -u username -p password
else
  echo "no need for reconnecting"
fi
