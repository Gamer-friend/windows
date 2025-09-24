# 🪟 Windows 11 VM in Docker

This setup uses [`dockurr/windows`](https://github.com/dockurr/windows) to run a full Windows 11 virtual machine inside a Docker container using QEMU and KVM.

## 🚀 Quick Start

1. Make sure you're on a **Linux host** with **KVM enabled**.
2. Clone this repo and navigate to `compose-windows/`.
3. Run:

   ```bash
   docker-compose up -d
