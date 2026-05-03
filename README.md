# 🚀 ARM64 Dev Boost

This project is designed to optimize development performance on **ARM64-based laptops** (like those running Windows with WSL2 or Linux) by providing high-performance, native Docker images and an optimized self-hosted GitHub Actions runner setup.

## ✨ Key Improvements

- **Optimized Dockerfiles**: Reduced image size and build time using multi-stage-like patterns and Alpine Linux.
- **Enhanced Runner Scripts**: Robust installation, configuration, and auto-restart capabilities for self-hosted runners.
- **Best Practices**: Included `.dockerignore` and environment tuning for ARM64 performance.

## 📁 Project Structure

- `docker/base-arm64/` — Optimized Ubuntu 22.04 ARM64 base image.
- `docker/node-arm64/` — Ultra-slim Node 20 ARM64 image (Alpine-based).
- `runner/` — Enhanced scripts for managing self-hosted runners.
- `.github/workflows/` — ARM64 CI/CD pipeline.

## 🛠️ Getting Started

### 1. Set Up the Runner
To use your laptop as a GitHub Actions runner:
```bash
cd runner
./install-runner.sh
./config.sh <YOUR_REPO_URL> <YOUR_GITHUB_TOKEN>
./start-runner.sh
```

### 2. Build Images Locally
```bash
docker build -t arm64-base ./docker/base-arm64
docker build -t arm64-node ./docker/node-arm64
```

## 🚀 Performance Tips for ARM64
1. **Use Native Images**: Always prefer `arm64` specific images to avoid slow emulation via QEMU.
2. **Alpine is King**: Use Alpine-based images where possible to minimize I/O overhead.
3. **Buildx Caching**: Use Docker Buildx with `--cache-from` and `--cache-to` to save time on repetitive builds.
4. **WSL2 Tuning**: If using WSL2, ensure your `.wslconfig` is tuned (e.g., `guiApplications=false` if not needed).
