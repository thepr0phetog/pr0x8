#!/bin/bash

# Pr0x8tor Installer Script
# Author: Your Name
# Version: 1.0

# Check if the script is run as root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root!" 1>&2
    exit 1
fi

# Install required packages
echo "Installing required packages..."
if hash apt-get 2>/dev/null; then
    apt-get update
    apt-get install -y gnome-terminal gksu
elif hash yum 2>/dev/null; then
    yum install -y gnome-terminal sudo
else
    echo "Error: Unable to install required packages. Please install gnome-terminal and gksu (for Linux systems with apt-get) or sudo (for Linux systems with yum) and try again."
    exit 1
fi

# Clone pr0x8tor repository
echo "Cloning pr0x8tor repository..."
git clone https://github.com/username/pr0x8tor.git

# Change to pr0x8tor directory
cd pr0x8tor

# Make pr0x8tor executable
echo "Making pr0x8tor executable..."
chmod +x pr0x8tor.sh

# Create a desktop file for pr0x8tor
echo "Creating desktop file for pr0x8tor..."
cat > pr0x8tor.desktop <<EOF
[Desktop Entry]
Type=Application
Terminal=true
Name=Pr0x8tor
Exec=gnome-terminal -- bash -c "cd pr0x8tor; ./pr0x8tor.sh"
EOF

# Move desktop file to /usr/share/applications
echo "Moving desktop file to /usr/share/applications..."
mv pr0x8tor.desktop /usr/share/applications

# Display success message
echo "Pr0x8tor has been installed successfully!"