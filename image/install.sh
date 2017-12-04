#!/bin/bash
set -e
export LC_ALL=C
export DEBIAN_FRONTEND=noninteractive
min_apt_ins='apt-get install -y --no-install-recommends'
set -x

## Upgrade all packages
apt-get update
apt-get upgrade -y --no-install-recommends

## Install needed packages
$min_apt_ins ca-certificates stubby

## Copy stubby config file
cp /build/stubby.yml /etc/stubby

## Cleanup
apt-get autoremove
apt-get clean
apt-get autoclean
rm -rf /build /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
