#!/bin/bash

sudo tee ./proxychains.conf <<EOF
# proxychains.conf
#
# This file is used to configure the proxychains daemon.
#
# See the proxychains.conf
[ProxyList]
socks5  127.0.0.1 1055
EOF
