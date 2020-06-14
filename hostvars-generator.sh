#!/bin/bash

while getopts "h:t:" opt; do
  case $opt in
    h)
      HOST=$OPTARG
      ;;
    t)
      TIMEZONE=$OPTARG
      ;;
  esac
done

HOST_VARS=./host_vars/$HOST

echo "---" >> $HOST_VARS
echo "mysql_root_password: " `pwgen -s -1 32` >> $HOST_VARS
echo "apache2_username: admin" >> $HOST_VARS
echo "apache2_password: " `pwgen -s -1 32` >> $HOST_VARS
echo "mysql_password: " `pwgen -s -1 32` >> $HOST_VARS
echo "timezone: $TIMEZONE" >> $HOST_VARS
echo "admin_panel_password: "`pwgen -s -1 32` >> $HOST_VARS
