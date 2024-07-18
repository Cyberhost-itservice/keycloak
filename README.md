
# Install Keycloak 25 with Postgresql 12 on Ubuntu 20.0.4

1. Pull: ansible-pull -U https://github.com/Cyberhost-itservice/keycloak.git 
2. visit Url: https://our_ip:8443
3. In the export.sh File can you change the Name and Passowrt for Keycloak ( Standart is sed: USER: keyadmin ; Pass: keypass ) 

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
