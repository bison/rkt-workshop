#!/bin/sh

mkdir -p packages
cd packages

curl -LO https://github.com/coreos/rkt/releases/download/v1.18.0/rkt_1.18.0-1_amd64.deb
curl -LO https://github.com/coreos/rkt/releases/download/v1.18.0/rkt_1.18.0-1_amd64.deb.asc
curl -LO https://github.com/containers/build/releases/download/v0.4.0/acbuild-v0.4.0.tar.gz
