#!/bin/bash
mkdir -p ~/actions-runner && cd ~/actions-runner
curl -o runner.tar.gz -L \
  https://github.com/actions/runner/releases/latest/download/actions-runner-linux-arm64.tar.gz
tar xzf runner.tar.gz
echo "Runner downloaded. Now run config.sh"
