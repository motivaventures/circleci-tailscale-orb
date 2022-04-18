#!/bin/bash

set -eu

# shellcheck source=/dev/null
source "${BASH_ENV}"

HOSTNAME="circleci-$(cat /etc/hostname)"

sudo tailscale up --authkey="${TAILSCALE_AUTH_KEY}" --hostname="${HOSTNAME}" --accept-routes=true
