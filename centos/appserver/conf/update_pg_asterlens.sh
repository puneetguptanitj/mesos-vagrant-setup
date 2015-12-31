#!/bin/bash

TOP_DIR=/opt/teradata/appserver

if [ $TOP_DIR = "INSTALL_DIR_VAR" ]
then
   echo "################################################################################"
   echo "#                                                                               "
   echo "#  You must replace the string INSTALL_DIR_VAR with your installation directory."
   echo "#                                                                               "
   echo "################################################################################"
   exit 1
fi

JAVA=$TOP_DIR/java/current/bin/java
sudo -u postgres $TOP_DIR/postgres/current/bin/psql -d appserver -p 6625 -c "$1"
if [ "$?" -ne "0" ]; then
   echo "ERROR: Could not enter connection profile/catalog table into postgres.">>/tmp/install.log
   exit $?
fi
