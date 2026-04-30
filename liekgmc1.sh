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
    # --- REAL-TIME DATA GATHERING ---
    HNAME=$(hostname)
    UPTIME=$(uptime -p | sed 's/up //')
    DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
    
    # RAM Calculation
    MEM_INFO=$(cat /proc/meminfo)
    MEM_TOTAL=$(echo "$MEM_INFO" | grep MemTotal | awk '{print $2}')
    MEM_AVAIL=$(echo "$MEM_INFO" | grep MemAvailable | awk '{print $2}')
    RAM_USAGE=$(( 100 - (MEM_AVAIL * 100 / MEM_TOTAL) ))
    
    # CPU Calculation
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)

    # Network Check
    if ping -c 1 8.8.8.8 &>/dev/null; then
        NET_STAT="${G}● CONNECTED${NC}"
    else
        NET_STAT="${R}● DISCONNECTED${NC}"
    fi

    clear
    # TOP STATUS BAR (Dynamic Powerline)
    echo -e " ${C}${NC}${B}  $HNAME ${NC}${C}${NC}  ${P}${NC}${B}  $UPTIME ${NC}${P}${NC}  ${G}${NC}${B}  $DISK_USAGE ${NC}${G}${NC}  ${W}${NC}${B}  $CPU_USAGE% RAM $RAM_USAGE%${NC}${W}${NC}"

    # MAIN LOGO (GODING HUB - Gradient)
    echo -e "${C}██╗     ██╗███████╗██╗  ██╗ ██████╗ ███╗   ███╗ ██████╗ "
    echo -e "${P}██║     ██║██╔════╝██║ ██╔╝██╔════╝ ████╗ ████║██╔════╝ "
    echo -e "${P}██║     ██║█████╗  █████╔╝ ██║  ███╗██╔████╔██║██║      "
    echo -e "${Y}██║     ██║██╔══╝  ██╔═██╗ ██║   ██║██║╚██╔╝██║██║      "
    echo -e "${C}███████╗██║███████╗██║  ██╗╚██████╔╝██║ ╚═╝ ██║╚██████╗ "
    echo -e "${C}╚══════╝╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝"
    
    echo -e "                  ${W}NOBITA EDITION — OBSIDIAN NEXT GEN${NC}"
    echo -e " ${B}────────────────────────────────────────────────────────────────────────────────${NC}\n"

    # SYSTEM STATUS (Working Stats)
    echo -e " ${W}◉ SYSTEM STATUS${NC}"
    echo -e "   CPU Usage:   ${C}$CPU_USAGE%${NC}     RAM Usage:   ${P}$RAM_USAGE%${NC}     Network: $NET_STAT\n"

    # DEPLOYMENT & SERVICES
    echo -e " ${C} DEPLOYMENT & SERVICES${NC}"
    echo -e "   ${B}├─${NC} [1] VPS           ${B}┌─${NC} [5] Themes"
    echo -e "   ${B}├─${NC} [2] Panel         ${B}├─${NC} [6] System"
    echo -e "   ${B}├─${NC} [3] Wings         ${B}└─${NC} [7] Container"
    echo -e "   ${B}└─${NC} [8] ${G}New Module${NC}\n"

    # MAINTENANCE & TOOLS
    echo -e " ${P} MAINTENANCE & TOOLS${NC}"
    echo -e "   ${B}├─${NC} [4] Toolbox              ${B}└─${NC} ${R} [0] SHUTDOWN SYSTEM ${NC}"
    echo -e "   ${B}└─${NC} [9] Extras\n"

    echo -e " ${B}────────────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne " ${C}➜ Enter Option (0-9): ${NC}"
    read -r opt

    case $opt in
        1) echo -e "\n${G}Initializing VPS tools...${NC}"; sleep 2 ;;
        2) echo -e "\n${G}Opening Panel settings...${NC}"; sleep 2 ;;
        3) echo -e "\n${G}Checking Wings status...${NC}"; sleep 2 ;;
        4) echo -e "\n${P}Launching Toolbox...${NC}"; sleep 2 ;;
        5) echo -e "\n${C}Refreshing Themes...${NC}"; sleep 2 ;;
        6) echo -e "\n${W}System Info:${NC}"; uname -a; sleep 3 ;;
        7) echo -e "\n${G}Managing Containers...${NC}"; sleep 2 ;;
        8) echo -e "\n${G}Loading New Module...${NC}"; sleep 2 ;;
        9) echo -e "\n${P}Opening Extras...${NC}"; sleep 2 ;;
        0) echo -e "\n${R}Shutting down... Sayonara!${NC}"; exit 0 ;;
        *) echo -e "\n${R}Invalid Option!${NC}"; sleep 1 ;;
    esac
done
