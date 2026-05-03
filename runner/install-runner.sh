#!/bin/bash
set -e

RUNNER_DIR="$HOME/actions-runner"
VERSION="2.316.1" # Update to a specific stable version

echo "🚀 Creating runner directory at $RUNNER_DIR..."
mkdir -p "$RUNNER_DIR" && cd "$RUNNER_DIR"

if [ ! -f "config.sh" ]; then
    echo "📥 Downloading GitHub Actions Runner for ARM64..."
    curl -o actions-runner-linux-arm64.tar.gz -L \
        "https://github.com/actions/runner/releases/download/v${VERSION}/actions-runner-linux-arm64-${VERSION}.tar.gz"
    
    echo "📦 Extracting runner..."
    tar xzf ./actions-runner-linux-arm64.tar.gz
    rm ./actions-runner-linux-arm64.tar.gz
else
    echo "✅ Runner already installed."
fi

echo "✨ Installation complete. Please run ./config.sh to register your runner."
