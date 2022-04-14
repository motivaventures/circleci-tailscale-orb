#!/bin/sh

set -eu

CAN_ROOT=
SUDO=
if [ "$(id -u)" = 0 ]; then
		CAN_ROOT=1
		SUDO=""
elif type sudo >/dev/null; then
  CAN_ROOT=1
  SUDO="sudo"
elif type doas >/dev/null; then
  CAN_ROOT=1
  SUDO="doas"
fi
if [ "$CAN_ROOT" != "1" ]; then
  echo "This installer needs to run commands as root."
  echo "We tried looking for 'sudo' and 'doas', but couldn't find them."
  echo "Either re-run this script as root, or set up sudo/doas."
  exit 1
fi

$SUDO tailscaled --tun=userspace-networking --outbound-http-proxy-listen=localhost:${HTTP_PROXY_PORT} --socks5-server=localhost:${SOCKS5_PROXY_PORT} 2>~/tailscaled.log
