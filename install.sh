#!/bin/bash

apt-get update
apt-get install -y wget unzip
mkdir -p /grok && mkdir -p /var/grok
mv /tmp/config.yml /grok/ && mv /tmp/example.log /grok/
cd /grok
wget https://github.com/fstab/grok_exporter/releases/download/$GROK_VERSION/$GROK_ARCH.zip
unzip $GROK_ARCH.zip
rm $GROK_ARCH.zip
apt-get --autoremove -y purge wget unzip
rm -fr /var/lib/apt/lists/* && rm -r /var/cache/
apt-get autoclean
cd $GROK_ARCH/
ln -s /grok/$GROK_ARCH/patterns/ /grok/patterns
ln -sf /grok/$GROK_ARCH/grok_exporter /grok/grok_exporter

ln -sf /dev/stdout /var/log/grok.log \
&& ln -sf /dev/stderr /var/log/grok.err.log
