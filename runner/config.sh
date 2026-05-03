#!/bin/bash
set -e

# Configuration variables - change these or pass as environment variables
REPO_URL=${1:-"https://github.com/rintuchowdory/arm64-dev-boost"}
TOKEN=${2:-"YOUR_TOKEN"}
RUNNER_NAME=$(hostname)

cd ~/actions-runner

if [ "$TOKEN" == "YOUR_TOKEN" ]; then
    echo "❌ Error: Please provide a valid GitHub Runner token."
    echo "Usage: ./config.sh <repo_url> <token>"
    exit 1
fi

echo "⚙️ Configuring runner '$RUNNER_NAME' for $REPO_URL..."

./config.sh \
  --url "$REPO_URL" \
  --token "$TOKEN" \
  --name "$RUNNER_NAME" \
  --labels arm64,local,wsl2,optimized \
  --unattended \
  --replace

echo "✅ Runner configured successfully!"
