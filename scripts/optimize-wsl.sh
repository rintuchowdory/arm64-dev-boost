#!/bin/bash
# Manual ZRAM setup for WSL2 kernels where zram-tools might fail
echo "🚀 Boosting ARM64 Performance with ZRAM..."
sudo modprobe zram
sudo zramctl --find --size 4G
sudo mkswap /dev/zram0
sudo swapon /dev/zram0 --priority 100
echo "✅ ZRAM 4GB Enabled!"
