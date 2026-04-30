#!/bin/bash

# Function to display the banner
display_banner() {
    clear
    echo -e "\e[36m" # Cyan
    cat << "EOF"
      _____  _        _       _
     | ____|| |      | |     | |
     | |__  | |      | |     | |
     | __|  | |      | |     | |
     | |___ | |____  | |____ | |____
     |_____||______| |______| |______|
EOF
    echo -e "\e[33m NOBITA EDITION - OBSIDIAN NEXT GEN \e[0m" # Yellow
    echo ""
}

# Function to display system status
display_system_status() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    RAM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    NETWORK_STATUS="CONNECTED" # Placeholder for now

    echo -e "\e[96mSYSTEM STATUS\e[0m" # Light Cyan
    echo "  CPU Usage: \e[92m${CPU_USAGE}%\e[0m" # Green
    echo "  RAM Usage: \e[93m${RAM_USAGE}%\e[0m" # Yellow
    echo "  Network: \e[92m${NETWORK_STATUS}\e[0m" # Green
    echo ""
}

# Function to display the main menu
display_main_menu() {
    echo -e "\e[96mDEPLOYMENT & SERVICES\e[0m" # Light Cyan
    echo "  [1] VPS"
    echo "  [2] Panel"
    echo "  [3] Wings"
    echo "  [5] Themes"
    echo "  [6] System"
    echo "  [7] Container"
    echo "  [8] New Module"
    echo ""
    echo -e "\e[96mMAINTENANCE & TOOLS\e[0m" # Light Cyan
    echo "  [4] Toolbox"
    echo "  [9] Extras"
    echo "  [0] SHUTDOWN SYSTEM"
    echo ""
}

# Main loop
while true; do
    display_banner
    display_system_status
    display_main_menu

    read -p "Enter Option (0-9): " choice

    case $choice in
        1) echo "Executing VPS option..."; sleep 2 ;;
        2) echo "Executing Panel option..."; sleep 2 ;;
        3) echo "Executing Wings option..."; sleep 2 ;;
        4) echo "Executing Toolbox option..."; sleep 2 ;;
        5) echo "Executing Themes option..."; sleep 2 ;;
        6) echo "Executing System option..."; sleep 2 ;;
        7) echo "Executing Container option..."; sleep 2 ;;
        8) echo "Executing New Module option..."; sleep 2 ;;
        9) echo "Executing Extras option..."; sleep 2 ;;
        0) echo "Shutting down..."; exit 0 ;;
        *) echo "Invalid option. Please enter a number between 0 and 9."; sleep 2 ;;
    esac
done
