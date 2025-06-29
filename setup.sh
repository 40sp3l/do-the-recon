#!/bin/bash

# ---------------------------------------------
# do-the-recon Setup Script by 40sp3l
# ---------------------------------------------

set -e

echo "Starting setup for do-the-recon..."

# Update system
echo "[*] Updating package lists..."
#sudo apt update

# Install recon tools
echo "[*] Installing subfinder, assetfinder, sublist3r, httpx-toolkit..."
sudo apt install -y subfinder assetfinder sublist3r httpx-toolkit

# Install Go if not present
if ! command -v go &> /dev/null; then
    echo "[*] Go not found. Installing Go..."
    sudo apt install -y golang
else
    echo "[*] Go is already installed."
fi

# Install waybackurls
echo "[*] Installing waybackurls via Go..."
go install github.com/tomnomnom/waybackurls@latest

# Move to /usr/bin
WAYBACK_BIN="$HOME/go/bin/waybackurls"
if [ -f "$WAYBACK_BIN" ]; then
    echo "[*] Moving waybackurls to /usr/bin..."
    sudo mv "$WAYBACK_BIN" /usr/bin/waybackurls
    sudo chmod +x /usr/bin/waybackurls
else
    echo "[!] waybackurls binary not found at $WAYBACK_BIN"
    exit 1
fi

# Install Python modules
echo "[*] Installing required Python modules..."
pip3 install pyfiglet termcolor --break-system-packages

echo ""
echo "Setup complete. You can now run: ./do-the-recon.py -d example.com"
