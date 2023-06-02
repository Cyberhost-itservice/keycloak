#!/bin/bash

# Install Keycloak
sudo apt-get update
sudo apt-get install -y openjdk-11-jre-headless 
sudo apt-get install -y wget 
sudo apt-get install -y unzip 
cd /opt
wget https://github.com/keycloak/keycloak/releases/download/21.0.1/keycloak-21.1.1.zip
sudo unzip keycloak-21.1.1.zip
mv /opt/keycloak-21.1.1 /opt/keycloak
#sudo ln -s /opt/keycloak-20.0.0 /opt/keycloak

# Install Postgres
sudo apt-get install -y postgresql postgresql-contrib

# Create a new Postgres user and database for Keycloak
sudo -u postgres psql -c "CREATE USER keycloak WITH PASSWORD 'password';"
sudo -u postgres psql -c "CREATE DATABASE keycloak OWNER keycloak;"

# next create TLS Certificate in Folder 
cd /opt/keycloak/
mkdir cert
cd cert 
openssl req -newkey rsa:4096 -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem


# next create user for keycloak
cd /opt/keycloak/bin

# when the export command not funct - got to the path /opt/keyclaok20.0/bin and push new

export KEYCLOAK_ADMIN=keyadmin
export KEYCLOAK_ADMIN_PASSWORD=keypass

# before start Keycloak please configuration the keycloak.conf.
# Path of this file: /opt/keycloak20/conf/ 
# example File : configkeyloakpostresql.conf 

# keybuild and start

./kc.sh build
./kc.sh start 
