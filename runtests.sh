#!/usr/bin/env bash
echo "Hello this is first attempt to run bash script on github actions"
if grep -iq centos "/etc/os-release"; then
  echo "This is a centos machine"
  yum install -y epel-release;
  yum install -y python3-pip;
fi
if grep -iq fedora "$File"; then
  echo "This is a fedora machine"
  yum install -y python3-pip;
fi
