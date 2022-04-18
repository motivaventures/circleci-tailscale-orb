#!/bin/bash

set -eu

sudo tailscaled --tun=userspace-networking --outbound-http-proxy-listen=localhost:"${HTTP_PROXY_PORT}" --socks5-server=localhost:"${SOCKS5_PROXY_PORT}" 2>~/tailscaled.log &