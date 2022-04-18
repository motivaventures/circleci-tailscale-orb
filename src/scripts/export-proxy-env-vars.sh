#!/bin/bash

set -eu

{
  echo "export ALL_PROXY=socks5h://localhost:1055/"
  echo "export HTTP_PROXY=http://localhost:1054/"
  echo "export HTTPS_PROXY=http://localhost:1054/"
  echo "export http_proxy=http://localhost:1054/"
  echo "export https_proxy=http://localhost:1054/"
} >> $BASH_ENV

# shellcheck source=/dev/null
source "${BASH_ENV}"
