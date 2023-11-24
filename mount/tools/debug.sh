#!/usr/bin/env bash
set -x

apt-get update >/dev/null
apt-get install -y less dnsutils iputils-ping net-tools >/dev/null
hostname
hostname -I
dig member
netstat -l
exec bash