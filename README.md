# Install Keycloak 20.0.3 with Postgresql 12 on Ubuntu 20.0.4

ansible-pull -U https://github.com/Cyberhost-itservice/keycloak.git \
Please change the Ip Address in keycloak.conf to our IP Address. ( /opt/keycloak-20.0.3/conf/keycloak.conf ) \
Url: https://our_ip:8443 \
In the export.sh File can you change the Name and Passowrt for Keycloak ( Standart is sed: USER: keyadmin ; Pass: keypass ) \

+ Keycloak

Keycloak is an open source software product to allow single sign-on with Identity and Access Management aimed at modern applications and services. As of \ March 2018 this WildFly community project is under the stewardship of Red Hat who use it as the upstream project for their RH-SSO product. \ 
