# Here come ansible or bash for install Keycloak 20 with Postgresql on Ubuntu without replication Postgresql \

 Install Finsih about  with: ansible-pull -U https://code.hattec.de/alexander.lewrick/Keyclaok.git 


# Keycloak 20.0.0 and Postgresql on Ubuntu Server 20.4
1. The Folder bashscripte is a install.sh file is a script for Install Keycloak , Postgresql , OpenSSL with create certificate on Ubuntu Server 
2. copy the config file and to adjust the IP address in the config file ( path: /opt/keyclaok/conf/ File: keycloak.conf ) 
3. than change to /opt/keycloak/bin , command: export KEYCLOAK_ADMIN=keyadmin && export KEYCLOAK_ADMIN_PASSWORD=keypass && ./kc.sh build && ./kc.sh start 
4. URL: https://our_IP:8443 
