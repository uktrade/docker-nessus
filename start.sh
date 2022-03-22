#!/bin/bash

[ ! -d "/opt/nessus/var/nessus" ] && mv /opt/nessus/var-nessus /opt/nessus/var/nessus 

exec /usr/bin/supervisord
