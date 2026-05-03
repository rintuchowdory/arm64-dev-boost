#!/bin/bash
cd ~/actions-runner

echo "🏃 Starting GitHub Actions Runner..."
echo "Press Ctrl+C to stop."

# Run the runner and restart if it crashes
while true; do
    ./run.sh
    echo "⚠️ Runner stopped. Restarting in 5 seconds..."
    sleep 5
done
