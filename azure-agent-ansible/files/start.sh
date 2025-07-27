#!/bin/bash
set -e

if [ -z "$AZP_URL" ] || [ -z "$AZP_TOKEN" ] || [ -z "$AZP_POOL" ]; then
  echo "AZP_URL, AZP_TOKEN, and AZP_POOL must be set"
  exit 1
fi

export AGENT_ALLOW_RUNASROOT="1"

curl -LsS https://vstsagentpackage.azureedge.net/agent/3.236.0/vsts-agent-linux-x64-3.236.0.tar.gz | tar -xz
./config.sh --unattended \
  --url "$AZP_URL" \
  --auth pat \
  --token "$AZP_TOKEN" \
  --pool "$AZP_POOL" \
  --acceptTeeEula \
  --replace

./run.sh
