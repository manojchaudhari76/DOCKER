#!/bin/sh

echo " we are trying to parse the parameter file $1"
. $1
echo "Your name is : $NAME"
echo Running via $2

echo "$@"
