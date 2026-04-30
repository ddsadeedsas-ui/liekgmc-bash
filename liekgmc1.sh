#!/usr/bin/env bash

# --- COLOR DEFINITIONS ---
C='\033[1;38;5;51m'      # Neon Cyan
P='\033[1;38;5;135m'     # Deep Purple
G='\033[1;38;5;82m'      # Emerald Green
R='\033[1;38;5;196m'     # Crimson Red
Y='\033[1;38;5;220m'     # Gold/Yellow
W='\033[1;38;5;255m'     # Pure White
B='\033[0;38;5;236m'     # Dark Gray (Background-ish)
NC='\033[0m'             # Reset

while true; do
    clear
    # TOP STATUS BAR (Powerline Style)
    echo -e " ${C}${NC}${B}  65c2dcb5d72a ${NC}${C}${NC}  ${P}${NC}${B}  3 days, 1 hour, 54 minutes ${NC}${P}${NC}  ${G}${NC}${B}  35% ${NC}${G}${NC}  ${W}${NC}${B}  3% RAM 7%${NC}${W}${NC}"

    # MAIN LOGO (GODING HUB - Gradient Styled)
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
    echo -e "   CPU Usage:   ${C}3%${NC}     RAM Usage:   ${P}7%${NC}     Network: ${G}● CONNECTED${NC}\n"

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
        1) echo -e "\n${G}Selected: VPS Deployment${NC}"; sleep 1 ;;
        2) echo -e "\n${G}Selected: Panel Management${NC}"; sleep 1 ;;
        3) echo -e "\n${G}Selected: Wings Config${NC}"; sleep 1 ;;
        4) echo -e "\n${P}Selected: Toolbox${NC}"; sleep 1 ;;
        5) echo -e "\n${C}Selected: Themes${NC}"; sleep 1 ;;
        6) echo -e "\n${W}Selected: System Health${NC}"; sleep 1 ;;
        7) echo -e "\n${G}Selected: Container Management${NC}"; sleep 1 ;;
        8) echo -e "\n${G}Selected: New Module${NC}"; sleep 1 ;;
        9) echo -e "\n${P}Selected: Extras${NC}"; sleep 1 ;;
        0) echo -e "\n${R}Terminating Session...${NC}"; exit 0 ;;
        *) echo -e "\n${R}Invalid Option!${NC}"; sleep 1 ;;
    esac
done
