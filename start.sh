#!/bin/bash

set -e

if [ ! -d "/opt/nessus/var/nessus" ]
then
    echo "Restoring /opt/nessus/var/nessus"
    mv /opt/nessus/var-nessus /opt/nessus/var/nessus 
    yes | /opt/nessus/sbin/nessuscli fix --reset
else
    echo "/opt/nessus/var/nessus exists; doing nothing"
fi

exec /usr/bin/supervisord
