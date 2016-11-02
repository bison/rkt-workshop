#!/bin/bash

set -eux

apt update
apt -y install systemd-container

###############
# Install rkt #
###############

KEY_URL="https://coreos.com/dist/pubkeys/app-signing-pubkey.gpg"

curl -s $KEY_URL | gpg --import 2>/dev/null
gpg --verify /vagrant/packages/rkt_1.18.0-1_amd64.deb.asc 2>&1 || exit 1

dpkg -i /vagrant/packages/rkt_1.18.0-1_amd64.deb
usermod -aG rkt,rkt-admin ubuntu


###################
# Install acbuild #
###################

tar --directory=/usr/local/bin --strip-components=1 --no-same-owner \
    -xzf /vagrant/packages/acbuild-v0.4.0.tar.gz
