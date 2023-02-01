#!/bin/bash

# ip adress change in config

ipadr=$(hostname -I)
#echo $ipadr 
sed -i '26s/.*/'ip="$ipadr"'/' /opt/keycloak-20.0.3/conf/keycloak.conf
sed -i '41s/.*/'hostname="$ipadr"'/' /opt/keycloak-20.0.3/conf/keycloak.conf

# next create user for keycloak
cd /opt/keycloak-20.0.3/bin

# when the export command not funct - got to the path /opt/keyclaok20.0/bin and push new

export KEYCLOAK_ADMIN=keyadmin
export KEYCLOAK_ADMIN_PASSWORD=keypass

# before start Keycloak please configuration the keycloak.conf.
# Path of this file: /opt/keycloak20/conf/ 
# example File : configkeyloakpostresql.conf 

# keybuild and start

./kc.sh build
./kc.sh start 
