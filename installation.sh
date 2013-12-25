#!/bin/bash

echo "\n\nUpdating ubuntu packages list\n\n"
sudo apt-get -y update

echo "\n\nUpgrading packages\n\n"
sudo apt-get -y upgrade

echo "\n\nInstalling ipython\n\n"
sudo apt-get install -y ipython

echo "\n\nInstalling python pip\n\n"
sudo apt-get install -y python-pip

echo "\n\nInstalling python easy_install tool\n\n"
sudo apt-get install python-setuptools python-dev build-essential


echo "\n\nInstalling python devlopers tools\n\n"
sudo apt-get install libevent-dev
sudo apt-get install python-all-dev
sudo easy_install greenlet
sudo easy_install gevent


echo "Installing flask"
sudo pip install Flask





echo "Installing mongodb"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-10gen

echo "Installing python application interface for using mongodb"
pip install pymongo



echo "Installing python reqeusts module to use http protocols"
pip install requests

echo "Installing flask-restful for using http standard protocols to be used in python"
pip install flask-restful


echo "Installing gunicorn and its dependicies"
pip install gunicorn

echo "\n\nInstalling supervisord  and its changing its configuration file for gunicorn\n\n"
pip install supervisor
echo_supervisord_conf > /etc/supervisord.conf
cp /home/ubuntu



