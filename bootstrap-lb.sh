#!/bin/bash

apt-get -y update
apt-get -y install haproxy

mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak
cp /vagrant/haproxy.cfg /etc/haproxy/haproxy.cfg

service haproxy start

