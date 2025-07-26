#!/bin/sh
set -euo pipefail

export SERVER_DOMAIN=${SERVER_DOMAIN}
export AGENT_DOMAIN=${AGENT_DOMAIN}

# strip https:// or https:// from domain if necessary
SERVER_DOMAIN=${SERVER_DOMAIN##*://}
AGENT_DOMAIN=${AGENT_DOMAIN##*://}

echo using server: ${SERVER_DOMAIN}
echo using agent: ${AGENT_DOMAIN}

exec caddy run --config Caddyfile --adapter caddyfile 2>&1