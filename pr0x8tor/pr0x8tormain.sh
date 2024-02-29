#!/bin/bash

# Function to open a new terminal window in administrator mode (for Linux systems with gksu or gnome-terminal installed)
function open_admin_terminal() {
    if hash gksu 2>/dev/null; then
        gksu gnome-terminal -- bash -c "exec bash;"
    elif hash gnome-terminal 2>/dev/null; then
        gnome-terminal -- bash -c "exec bash;"
    else
        echo "Error: Unable to open administrator terminal. Please install gksu or gnome-terminal and try again."
        return
    fi
}
# Function to display the proxies menu
function startpr0x8tor(){
    while true; do
        clear
        clear
        echo "  ██████╗ ██████╗  ██████╗ ██╗  ██╗ █████╗ ████████╗ ██████╗ ██████╗ "
        echo "  ██╔══██╗██╔══██╗██╔═████╗╚██╗██╔╝██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗"
        echo "  ██████╔╝██████╔╝██║██╔██║ ╚███╔╝ ╚█████╔╝   ██║   ██║   ██║██████╔╝"
        echo "  ██╔═══╝ ██╔══██╗████╔╝██║ ██╔██╗ ██╔══██╗   ██║   ██║   ██║██╔══██╗"
        echo "  ██║     ██║  ██║╚██████╔╝██╔╝ ██╗╚█████╔╝   ██║   ╚██████╔╝██║  ██║"
        echo "  ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚════╝    ╚═╝    ╚═════╝ ╚═╝  ╚═╝"
        echo ""
        echo ""
        echo "                  ####################################"
        echo "                  ##::::::::::::PR0X8TOR::::::::::::##"
        echo "                  ####################################"
        echo "                  ##:::::::::::::PROXIES::::::::::::##"
        echo "                  ##                                ##"
        echo "                  ##    1. 25 Premium Proxies       ##"
        echo "                  ##                                ##"
        echo "                  ##    2. 50 Premium Proxies       ##"
        echo "                  ##                                ##"
        echo "                  ##    3. 100 Premium Proxies      ##"
        echo "                  ##                                ##"
        echo "                  ##    4. Back to Main Menu        ##"
        echo "                  ##                                ##"
        echo "                  ####################################"
        echo ""

        read -p "Please make a selection (1, 2, 3, or 4): " choice

        case $choice in
            1)
                num_proxies=25
                echo "Generating 25 premium proxies..."
                generate-proxies $num_proxies
                echo "Returning to main menu or exiting? (m/e)"
                read -p "Enter your choice: " choice
                case $choice in
                    m)
                        ;;&
                    e)
                        exit 0
                        ;;&
                    *)
                        echo "Invalid choice, returning to main menu..."
                        ;;
                esac
                break
                ;;
            2)
                num_proxies=50
                echo "Generating 50 premium proxies..."
                generate-proxies $num_proxies
                echo "Returning to main menu or exiting? (m/e)"
                read -p "Enter your choice: " choice
                case $choice in
                    m)
                        ;;&
                    e)
                        exit 0
                        ;;&
                    *)
                        echo "Invalid choice, returning to main menu..."
                        ;;
                esac
                break
                ;;
            3)
                num_proxies=100
                echo "Generating 100 premium proxies..."
                generate-proxies $num_proxies
                echo "Returning to main menu or exiting? (m/e)"
                read -p "Enter your choice: " choice
                case $choice in
                    m)
                        ;;&
                    e)
                        exit 0
                        ;;&
                    *)
                        echo "Invalid choice, returning to main menu..."
                        ;;
                esac
                break
                ;;
            4)
                return
                ;;
            *)
                echo "Invalid choice, please try again."
                ;;
        esac
    done
}

# Function to display the commands menu
function show-commands-menu() {
    while true; do
        clear
        echo "####################################"
        echo "##::::::::::::PR0X8TOR::::::::::::##"
        echo "####################################"
        echo "##:::::::::::::COMMANDS:::::::::::##"
        echo "##                                ##"
        echo "##    1. Rotate Proxy Manually    ##"
        echo "##                                ##"
        echo "##  2. Enable Auto Proxy Rotation ##"
        echo "##                                ##"
        echo "## 3. Disable Auto Proxy Rotation ##"
        echo "##                                ##"
        echo "##      4. Back to Main Menu      ##"
        echo "##                                ##"
        echo "####################################"
        echo ""

        read -p "Please make a selection (1, 2, 3, or 4): " choice

        case $choice in
            1)
                echo "Rotate Proxy Manually: Rotates the proxy to a random one from the list."
                sleep 3
# Function to rotate the proxy manually
function rotate-proxy-manually() {
    echo "Rotating the proxy to a random one from the list..."
    # Add your code here to rotate the proxy
    sleep 3
}
                
                ;;
            2)
                echo "Enable Auto Proxy Rotation: Starts a loop that rotates the proxy every 600 seconds (10 minutes)."
                sleep 3
                ;;
            3)
                echo "Disable Auto Proxy Rotation: Stops the auto proxy rotation loop."
                sleep 3
                ;;
            4)
                return
                ;;
            *)
                echo "Invalid selection"
                ;;
        esac
    done
}

# Function to display the systems menu
function show-systems-menu() {
    while true; do
        clear
        echo "####################################"
        echo "##::::::::::::PR0X8TOR::::::::::::##"
        echo "####################################"
        echo "##:::::::::::::SYSTEMS::::::::::::##"
        echo "##                                ##"
        echo "##    1. Check disk usage         ##"
        echo "##                                ##"
        echo "##    2. Check memory usage       ##"
        echo "##                                ##"
        echo "##    3. Check CPU usage          ##"
        echo "##                                ##"
        echo "##    4. Check network interfaces ##"
        echo "##                                ##"
        echo "##    5. Check running processes  ##"
        echo "##                                ##"
        echo "##    6. Back to Main Menu        ##"
        echo "##                                ##"
        echo "####################################"
        echo ""

        read -p "Please make a selection (1, 2, ..., 6): " choice

        case $choice in
            1)
                echo "Check Disk Usage: Displays the disk usage for all partitions."
                df -h
                sleep 3
                ;;
            2)
                echo "Check Memory Usage: Displays the memory usage for the system."
                free -h
                sleep 3
                ;;
            3)
                echo "Check CPU Usage: Displays the CPU usage for the system."
                top -bn1 | grep "Cpu(s)" | \
                sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
                awk '{print 100 - $1"%"}'
                sleep 3
                ;;
            4)
                echo "Check Network Interfaces: Displays the network interfaces and their status."
                ip addr show
                sleep 3
                ;;
            5)
                echo "Check Running Processes: Displays the running processes and their details."
                ps auxf
                sleep 3
                ;;
            6)
                return
                ;;
            *)
                echo "Invalid selection"
                ;;
        esac
    done
}

# Function to display the main menu
function showMain() {
    while true; do
        clear
        echo "####################################"
        echo "##::::::::::::PR0X8TOR::::::::::::##"
        echo "####################################"
        echo "##:::::::::::::MENU:::::::::::::::##"
        echo "##                                ##"
        echo "##          1. Proxies            ##"
        echo "##                                ##"
        echo "##          2. Commands           ##"
        echo "##                                ##"
        echo "##          3. Systems            ##"
        echo "##                                ##"
        echo "##          4. Exit               ##"
        echo "##                                ##"
        echo "####################################"
        echo ""

        read -p "Please make a selection (1, 2, 3, or 4): " choice

        case $choice in
            1)
                show-proxies
                ;;
            2)
                show-commands-menu
                ;;
            3)
                show-systems-menu
                ;;
            4)
                exit 0
                ;;
            *)
                echo "Invalid selection"
                ;;
        esac
    done
}



# Call the functions to initialize script and display the main menu
