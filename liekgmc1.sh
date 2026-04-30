#!/usr/bin/env bash

# --- COLORS (MATCHING IMAGE) ---
CYAN='\033[1;38;5;51m'
PURPLE='\033[1;38;5;135m'
GOLD='\033[1;38;5;220m'
GREEN='\033[1;38;5;82m'
RED='\033[1;38;5;196m'
WHITE='\033[1;38;5;255m'
GRAY='\033[0;38;5;244m'
NC='\033[0m' # Reset

# --- SYSTEM VARIABLES ---
CPU_USAGE="4%"
RAM_USAGE="7%"
NETWORK="CONNECTED"
UPTIME="3 days, 1 hour, 20 minutes"

render_menu() {
    clear
    # TOP STATUS BAR
    echo -e "${GRAY}▊ = 65c2dcb5d72a ▊ 🕒 $UPTIME ▊ 🔋 35% ▊ 🖥️ $CPU_USAGE RAM $RAM_USAGE${NC}"
    
    # MAIN LOGO
    echo -e "${CYAN}"
    cat << "EOF"
  ____  U  ___  ____  _   _   _  U  ____     _   _  _   _  ____  
 / ___|  \/"_ \ |  _ \ | \ | |  | | / ___|   | | | || | | || __ ) 

| |  _   | | | || | | ||  \| |  | || |  _   | |_| || | | ||  _ \ 
| |_| |  | |_| || |_| || |\  |  | || |_| |  |  _  || |_| || |_) |
 \____|   \___/ |____/ |_| \_|  |_| \____|  |_| |_| \___/ |____/ 
EOF
    echo -e "       ${GRAY}NOBITA EDITION - OBSIDIAN NEXT GEN${NC}"
    echo -e "${GRAY}──────────────────────────────────────────────────────────────────────────────${NC}"

    # SYSTEM STATUS
    echo -e " ${WHITE}● SYSTEM STATUS${NC}"
    echo -e "   ${GRAY}CPU Usage:${NC} ${CYAN}$CPU_USAGE${NC}     ${GRAY}RAM Usage:${NC} ${PURPLE}$RAM_USAGE${NC}    ${GRAY}Network:${NC} ${GREEN}● $NETWORK${NC}\n"

    # DEPLOYMENT & SERVICES
    echo -e " ${CYAN}╓ DEPLOYMENT & SERVICES${NC}"
    echo -e " ${CYAN}║${NC} [1] VPS            ${CYAN}║${NC} [5] Themes"
    echo -e " ${CYAN}║${NC} [2] Panel          ${CYAN}║${NC} [6] System"
    echo -e " ${CYAN}║${NC} [3] Wings          ${CYAN}║${NC} [7] Container"
    echo -e " ${CYAN}║${NC} ${GREEN}[8] New Module${NC}\n"

    # MAINTENANCE & TOOLS
    echo -e " ${PURPLE}╓ MAINTENANCE & TOOLS${NC}"
    echo -e " ${PURPLE}║${NC} [4] Toolbox           ${RED}╙── [0] SHUTDOWN SYSTEM ▊${NC}"
    echo -e " ${PURPLE}║${NC} [9] Extras${NC}"
    echo -e "${GRAY}──────────────────────────────────────────────────────────────────────────────${NC}"
    
    echo -ne " ${CYAN}➜ Enter Option (0-9): ${NC}"
}

# --- MENU LOGIC ---
while true; do
    render_menu
    read -r opt
    case $opt in
        1) echo "Launching VPS Manager..."; sleep 2 ;;
        8) # Run your LIEKGMC script here
           bash <(curl -fsSL "https://githubusercontent.com") ;;
        0) echo -e "${RED}System shutting down...${NC}"; exit 0 ;;
        *) echo -e "${RED}Invalid Option!${NC}"; sleep 1 ;;
    esac
done
