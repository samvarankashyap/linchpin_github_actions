#!/usr/bin/env bash
echo "Hello this is first attempt to run bash script on github actions"
OS=$(cat /etc/*release | grep ^NAME | tr -d 'NAME="') 
echo $OS
if /bin/grep -iq centos "/etc/os-release"; then
  echo "This is a centos machine"
  yum install -y epel-release;
  yum install -y python3-pip;
fi
if /bin/grep -iq fedora "$File"; then
  echo "This is a fedora machine"
  yum install -y python3-pip;
fi
