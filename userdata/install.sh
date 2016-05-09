#!/bin/sh

touch Status
apt-get install -y wget 2>&1 |tee /tmp/wgetupdates
RC=$?
apt-get install -y curl  2>&1 |tee /tmp/curlupdate
RC1=$?

echo "RC:$RC RC1:$RC1" >Status

