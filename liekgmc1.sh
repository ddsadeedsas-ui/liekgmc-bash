#!/usr/bin/env bash

# --- COLOR DEFINITIONS ---
C='\033[1;38;5;51m'      # Neon Cyan
P='\033[1;38;5;135m'     # Deep Purple
G='\033[1;38;5;82m'      # Emerald Green
R='\033[1;38;5;196m'     # Crimson Red
Y='\033[1;38;5;220m'     # Gold/Yellow
W='\033[1;38;5;255m'     # Pure White
B='\033[0;38;5;236m'     # Dark Gray
NC='\033[0m'             # Reset

while true; do
    # --- DYNAMIC DATA GATHERING ---
    HNAME=$(hostname)
    UPTIME=$(uptime -p | sed 's/up //')
    DISK=$(df -h / | awk 'NR==2 {print $5}')
    MEM_A=$(grep MemAvailable /proc/meminfo | awk '{print $2}'); MEM_T=$(grep MemTotal /proc/meminfo | awk '{print $2}')
    RAM=$(( 100 - (MEM_A * 100 / MEM_T) ))
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)

    if ping -q -c 1 -W 1 8.8.8.8 >/dev/null 2>&1; then 
        NET_STAT="${G}● CONNECTED${NC}"
    else 
        NET_STAT="${R}● DISCONNECTED${NC}"
    fi

    clear
    # TOP STATUS BAR
    echo -e " ${W}─${NC} ${C}${NC}${B}  $HNAME ${NC}${C}${NC}  ${P}${NC}${B}  $UPTIME ${NC}${P}${NC}  ${G}${NC}${B}  $DISK ${NC}${G}${NC}  ${W}${NC}${B}  $CPU% RAM $RAM%${NC}${W}${NC}"

    # MAIN LOGO: LIEKGMC (Gradient Style)
    echo -e "${C}██╗     ██╗███████╗██╗  ██╗ ██████╗ ███╗   ███╗ ██████╗ "
    echo -e "${P}██║     ██║██╔════╝██║ ██╔╝██╔════╝ ████╗ ████║██╔════╝ "
    echo -e "${P}██║     ██║█████╗  █████╔╝ ██║  ███╗██╔████╔██║██║      "
    echo -e "${Y}██║     ██║██╔══╝  ██╔═██╗ ██║   ██║██║╚██╔╝██║██║      "
    echo -e "${C}███████╗██║███████╗██║  ██╗╚██████╔╝██║ ╚═╝ ██║╚██████╗ "
    echo -e "${C}╚══════╝╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝ "
    
    echo -e "                  ${W}NOBITA EDITION — OBSIDIAN NEXT GEN${NC}"
    echo -e " ${B}────────────────────────────────────────────────────────────────────────────────${NC}\n"

    # SYSTEM STATUS
    echo -e " ${W}◉ SYSTEM STATUS${NC}"
    echo -e "   CPU Usage:   ${C}$CPU%${NC}     RAM Usage:   ${P}$RAM%${NC}     Network: $NET_STAT\n"

    # DEPLOYMENT & SERVICES
    echo -e " ${C} DEPLOYMENT & SERVICES${NC}"
    echo -e "   ${B}├─${NC} [1] VPS           ${B}├─${NC} [5] Themes"
    echo -e "   ${B}├─${NC} [2] Panel         ${B}├─${NC} [6] System"
    echo -e "   ${B}├─${NC} [3] Wings         ${B}└─${NC} [7] Container"
    echo -e "   ${B}└─${NC} [8] ${G}New Module${NC}\n"

    # MAINTENANCE & TOOLS
    echo -e " ${P} MAINTENANCE & TOOLS${NC}"
    echo -e "   ${B}├─${NC} [4] Toolbox           ${B}└─${NC} ${R} [0] SHUTDOWN SYSTEM ${NC}"
    echo -e "   ${B}└─${NC} [9] Extras\n"

    echo -e " ${B}────────────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne " ${C}➜ Enter Option (0-9): ${NC}"
    read -r opt

    case $opt in
        0) echo -e "\n${R}Shutting down...${NC}"; exit 0 ;;
        1) echo -e "\n${G}Selected: VPS Deployment${NC}"; sleep 1 ;;
        2) echo -e "\n${G}Selected: Panel Config${NC}"; sleep 1 ;;
        4) echo -e "\n${P}Launching Toolbox...${NC}"; sleep 1 ;;
        *) echo -e "\n${W}Running module $opt...${NC}"; sleep 1 ;;
    esac
done
