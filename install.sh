#! /bin/bash
# create a file on a locamachine with a name in.sh and copy this input in this file. chmod +x this file. start the file with ./in.sh 
# when live system 
#sed -i 's/main/main universe multiverse/g' /etc/apt/sources.list
#	echo "deb http://"${LOCAL_CACHE:+${LOCAL_CACHE}/}"de.archive.ubuntu.com/ubuntu/ focal-updates main universe multiverse" >> /etc/apt/sources.list
#	echo "deb http://"${LOCAL_CACHE:+${LOCAL_CACHE}/}"security.ubuntu.com/ubuntu/ focal-security main universe multiverse" >> /etc/apt/sources.list
#
apt update 
apt install git ansible -y 
sed -i "188s/# command_warnings = False/command_warnings = False/1" /etc/ansible/ansible.cfg 

ansible-galaxy collection install community.mysql
ansible-galaxy collection install community.general 
ansible-galaxy collection install community.crypto
ansible-pull -U https://github.com/Cyberhost-itservice/keycloak.git
