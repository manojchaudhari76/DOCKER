#!/bin/bash
# USAGE : Script would need parameter as USERNAME

if [ -z $1 ]; then
echo " No username"
exit 1
fi

_PASS=${USER_PASS:-$(pwgen 12 1)}
RC=$?

if [ $RC -ne 0 ];then 
echo "Password not generated"
exit 1
fi

echo "$USER:${_PASS}|chpasswd"
echo "User : $USER has password :$_PASS set" 2>$1 /tmp/$USER.passwd

