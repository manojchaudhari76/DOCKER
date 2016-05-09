#!/bin/sh

touch /userlog/Status
chmod 777 /userlog/Status
echo "insider container" 2>&1 >/userlog/Status
echo "$# $@" >>/userlog/Status

echo Guests: $1
echo TOWN: $2
