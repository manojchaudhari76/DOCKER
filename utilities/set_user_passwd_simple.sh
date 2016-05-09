#!/bin/bash

_PASS=${USER_PASS:-$(pwgen 12 1)}
RC=$?

if [ $RC -ne 0 ];then 
echo "Password not generated"
exit 1
fi

echo USER_PASS=${_PASS}
export USER_PASS=${_PASS}

