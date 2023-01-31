
# Install Keycloak 20.0.3 with Postgresql 12 on Ubuntu 20.0.4

1. Pull: ansible-pull -U https://github.com/Cyberhost-itservice/keycloak.git 
2. Before you start please change the Ip Address in keycloak.conf to our IP Address. ( /opt/keycloak-20.0.3/conf/keycloak.conf ) 
   and than new run ./kc.sh build after that ./kc.sh start 
3. visit Url: https://our_ip:8443
4. In the export.sh File can you change the Name and Passowrt for Keycloak ( Standart is sed: USER: keyadmin ; Pass: keypass ) 
5. or clone this Repo and change the config how now Pull.

Keycloak:

    Keycloak is an open source software product to allow single sign-on with Identity 
    and Access Management aimed at modern applications and services. As of 
    March 2018 this WildFly community project is under the stewardship 
    of Red Hat who use it as the upstream project for their RH-SSO product. 
    URL: https://www.keycloak.org/ 


The features of Keycloak include:

    User registration
    Social login
    Single sign-on/sign-off across all applications belonging to the same realm
    Two-factor authentication
    LDAP integration
    Kerberos broker
    multitenancy with per-realm customizable skin
    
 There are two main components of Keycloak:

    Keycloak server, including the API and graphical interface.
    Keycloak application adapter: a set of libraries to call the server.
