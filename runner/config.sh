#!/bin/bash
# Replace YOUR_USERNAME, YOUR_REPO, YOUR_TOKEN
cd ~/actions-runner
./config.sh \
  --url https://github.com/YOUR_USERNAME/arm64-dev-boost \
  --token YOUR_TOKEN \
  --labels arm64,local,wsl2
