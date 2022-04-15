#!/bin/bash

# shellcheck source=/dev/null
source "${BASH_ENV}"

echo Hello "${PARAM_TO}"
echo Proxy "${HTTP_PROXY_PORT}"
echo TailScale "${TAILSCALE_AUTH_KEY}"