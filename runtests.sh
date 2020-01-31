#!/usr/bin/env bash
echo "Hello this is first attempt to run bash script on github actions"
OS=$(cat /etc/*release | grep ^NAME | tr -d 'NAME="') 
echo $OS
if [[ $OS = "CentOS Linux" ]]
then
    echo "This is centos";
    yum install -y python3 epel-release which git;
    yum install -y python3-pip python3-flake8 python3-devel gcc;
else
    echo "This is fedora"
    yum install -y python3 git;
    yum install -y python3-pip python3-flake8 python3-devel gcc which;
fi
