#!/bin/sh
set -euo pipefail

export SERVER_DOMAIN=${SERVER_DOMAIN}
export AGENT_DOMAIN=${AGENT_DOMAIN}
export SERVER_PORT=${SERVER_PORT}
export AGENT_PORT=${AGENT_PORT}

# strip https:// or https:// from domain if necessary
SERVER_DOMAIN=${SERVER_DOMAIN##*://}
AGENT_DOMAIN=${AGENT_DOMAIN##*://}

echo using server: ${SERVER_DOMAIN}:${SERVER_PORT}
echo using agent: ${AGENT_DOMAIN}:${AGENT_PORT}

exec caddy run --config Caddyfile --adapter caddyfile 2>&1