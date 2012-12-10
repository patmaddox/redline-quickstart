#!/bin/sh
if [ -d "/home/vagrant/redline-smalltalk" ]; then
  mv /home/vagrant/redline-smalltalk /vagrant
  ln -s /vagrant/redline-smalltalk/ /home/vagrant/redline-smalltalk
fi
