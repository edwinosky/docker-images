#:D FROM ubuntu:latest
#:D MAINTAINER Gissehel <public-docker-{id}-maintainer@gissehel.org>
#:! /bin/bash

export DEBIAN_FRONTEND=noninteractive

echo "deb http://archive.ubuntu.com/ubuntu xenial multiverse" >> /etc/apt/sources.list
apt-get update -y
locale-gen "en_US.UTF-8"
dpkg-reconfigure locales

#apt-mark hold initscripts
#apt-mark hold fuse
apt-get -y upgrade
apt-get -y install unzip wget curl apt-utils

rm -rf /var/lib/apt/lists/*
rm -f /var/log/dpkg.log
rm -rf /var/log/apt
rm -rf /var/cache/apt

