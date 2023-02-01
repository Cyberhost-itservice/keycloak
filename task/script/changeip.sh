#!/bin/bash

# ip adress change in config

ipadr=$(hostname -I)
echo $ipadr 
sed -i '26s/.*/'ip="$ipadr"'/' /opt/keycloak-20.0.3/conf/keycloak.conf
sed -i '41s/.*/'hostname="$ipadr"'/' /opt/keycloak-20.0.3/conf/keycloak.conf
