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
    DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
    
    # RAM Calculation
    MEM_TOTAL=$(grep MemTotal /proc/meminfo | awk '{print $2}')
    MEM_AVAIL=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
    RAM_USAGE=$(( 100 - (MEM_AVAIL * 100 / MEM_TOTAL) ))
    
    # CPU Calculation (Average)
    CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    CPU_USAGE=$(printf "%.0f" "$CPU_LOAD")

    clear
    # TOP STATUS BAR (Dynamic)
    echo -e " ${C}${NC}${B}  $HNAME ${NC}${C}${NC}  ${P}${NC}${B}  $UPTIME ${NC}${P}${NC}  ${G}${NC}${B}  $DISK_USAGE ${NC}${G}${NC}  ${W}${NC}${B}  $CPU_USAGE% RAM $RAM_USAGE%${NC}${W}${NC}"

    # MAIN LOGO (Gradient Effect)
    echo -e "${C}██╗     ██╗███████╗██╗  ██╗ ██████╗ ███╗   ███╗ ██████╗ "
    echo -e "${P}██║     ██║██╔════╝██║ ██╔╝██╔════╝ ████╗ ████║██╔════╝ "
    echo -e "${P}██║     ██║█████╗  █████╔╝ ██║  ███╗██╔████╔██║██║      "
    echo -e "${Y}██║     ██║██╔══╝  ██╔═██╗ ██║   ██║██║╚██╔╝██║██║      "
    echo -e "${C}███████╗██║███████╗██║  ██╗╚██████╔╝██║ ╚═╝ ██║╚██████╗ "
    echo -e "${C}╚══════╝╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝ ╚═════╝"
    
    echo -e "                  ${W}NOBITA EDITION — OBSIDIAN NEXT GEN${NC}"
    echo -e " ${B}────────────────────────────────────────────────────────────────────────────────${NC}\n"

    # SYSTEM STATUS
    echo -e " ${W}◉ SYSTEM STATUS${NC}"
    echo -e "   CPU Usage:   ${C}$CPU_USAGE%${NC}     RAM Usage:   ${P}$RAM_USAGE%${NC}     Network: ${G}● CONNECTED${NC}\n"

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
        1) echo -e "\n${G}Opening VPS Tools...${NC}"; sleep 2 ;;
        2) echo -e "\n${G}Accessing Panel...${NC}"; sleep 2 ;;
        3) echo -e "\n${G}Checking Wings...${NC}"; sleep 2 ;;
        4) echo -e "\n${P}Starting Toolbox...${NC}"; sleep 2 ;;
        5) echo -e "\n${C}Loading Themes...${NC}"; sleep 2 ;;
        6) echo -e "\n${W}System Information:${NC}"; uname -a; sleep 3 ;;
        7) echo -e "\n${G}Docker Status:${NC}"; docker ps 2>/dev/null || echo "Docker not found"; sleep 2 ;;
        8) echo -e "\n${G}Module Loaded.${NC}"; sleep 2 ;;
        9) echo -e "\n${P}Extras Menu...${NC}"; sleep 2 ;;
        0) echo -e "\n${R}Shutting down... Goodbye!${NC}"; exit 0 ;;
        *) echo -e "\n${R}Invalid Option!${NC}"; sleep 1 ;;
    esac
done
