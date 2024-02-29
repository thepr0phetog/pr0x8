#!/bin/bash

# Pr0x8tor Installer Script
# Author: Pr0phet
# Version: 1.1

	echo "
'########::'########::::'#####:::'##::::'##::'#######::'########::'#######::'########::
 ##.... ##: ##.... ##::'##.. ##::. ##::'##::'##.... ##:... ##..::'##.... ##: ##.... ##:
 ##:::: ##: ##:::: ##:'##:::: ##::. ##'##::: ##:::: ##:::: ##:::: ##:::: ##: ##:::: ##:
 ########:: ########:: ##:::: ##:::. ###::::: #######::::: ##:::: ##:::: ##: ########::
 ##.....::: ##.. ##::: ##:::: ##::: ## ##:::'##.... ##:::: ##:::: ##:::: ##: ##.. ##:::
 ##:::::::: ##::. ##::. ##:: ##::: ##:. ##:: ##:::: ##:::: ##:::: ##:::: ##: ##::. ##::
 ##:::::::: ##:::. ##::. #####::: ##:::. ##:. #######::::: ##::::. #######:: ##:::. ##:
..:::::::::..:::::..::::.....::::..:::::..:::.......::::::..::::::.......:::..:::::..::                                      "                                                     

# Check if the script is run as root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root!" 1>&2
    exit 1
fi

# Set terminal colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# Function to install required packages
install_packages() {
    if hash apt 2>/dev/null; then
        apt update
        apt install -y gnome-terminal gksu
    elif hash dnf 2>/dev/null; then
        dnf install -y gnome-terminal sudo
    else
        echo -e "${RED}Error: Unable to install required packages. Please install gnome-terminal and gksu (for Linux systems with apt) or sudo (for Linux systems with yum) and try again.${NC}"
        exit 1
    fi
}

# Install required packages
echo "Installing required packages..."
install_packages

# Clone pr0x8tor repository
echo "Cloning pr0x8tor repository..."
git clone https://github.com/thepr0phetog/pr0x8tor.git

# Check if clone was successful
if [ $? -ne 0 ]; then
    echo -e "${RED}Error: Failed to clone pr0x8tor repository. Please check your internet connection and try again.${NC}"
    exit 1
fi

# Change to pr0x8tor directory
cd pr0x8tor

# Print success message
echo -e "${GREEN}Successfully installed pr0x8tor!${NC}"

# Handle interrupt signals
trap 'echo -e "${RED}Interrupted. Exiting...${NC}"; cd ~; exit 1' INT
