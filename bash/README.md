Install about bash script

# Install Keycloak 21 with Postgresql 12 on Ubuntu 20.0.4

1. Copy the Bash script and run
2. Configure the Keycloak.conf
3. configure the Cache-ispn.xml ( change the IP Adresse )
4. and run with command: ./kc.sh start --cache-config-file=/opt/keycloak/conf/cache-ispn.xml --cache=local
6. Config the Cache-ispn.xml file for the Machine in the Cluster

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
