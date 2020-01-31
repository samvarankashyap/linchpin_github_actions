#!/usr/bin/env bash
echo "Hello this is first attempt to run bash script on github actions"
OS=$(cat /etc/*release | grep ^NAME | tr -d 'NAME="') 
echo $OS
if [[ $act = "Centos" ]]
then
    echo "This is centos";
    yum install -y epel-release;
    yum install -y python3-pip;
else
    echo "This is fedora"
    yum install -y python3-pip;  
fi
