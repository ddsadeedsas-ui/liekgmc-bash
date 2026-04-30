#!/usr/bin/env bash

# --- COLOR DEFINITIONS ---
C='\033[1;38;5;51m'      # Neon Cyan
P='\033[1;38;5;135m'     # Deep Purple
G='\033[1;38;5;82m'      # Emerald Green
R='\033[1;38;5;196m'     # Crimson Red
W='\033[1;38;5;255m'     # Pure White
B='\033[0;38;5;236m'     # Dark Gray
NC='\033[0m'             # Reset

render_menu() {
    clear
    # TOP STATUS BAR (Powerline Style)
    echo -e " ${C}${NC}${B}  65c2dcb5d72a ${NC}${C}${NC}  ${P}${NC}${B}  3 days, 1 hour, 26 minutes ${NC}${P}${NC}  ${G}${NC}${B}  35% ${NC}${G}${NC}  ${W}${NC}${B}  3% RAM 7%${NC}${W}${NC}\n"

    # MAIN LOGO
    echo -e "${C}"
    cat << "EOF"
   ██████╗  ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗     ██╗  ██╗██╗   ██╗██████╗
  ██╔════╝ ██╔═══██╗██╔══██╗██║████╗  ██║██╔════╝     ██║  ██║██║   ██║██╔══██╗
  ██║  ███╗██║   ██║██║  ██║██║██╔██╗ ██║██║  ███╗    ███████║██║   ██║██████╔╝
  ██║   ██║██║   ██║██║  ██║██║██║╚██╗██║██║   ██║    ██╔══██║██║   ██║██╔══██╗
  ╚██████╔╝╚██████╔╝██████╔╝██║██║ ╚████║╚██████╔╝    ██║  ██║╚██████╔╝██████╔╝
   ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝ ╚═════╝ ╚═════╝
EOF
    echo -e "                  ${W}NOBITA EDITION — OBSIDIAN NEXT GEN${NC}"
    echo -e " ${B}────────────────────────────────────────────────────────────────────────────────${NC}\n"

    # SYSTEM STATUS
    echo -e " ${W}◉ SYSTEM STATUS${NC}"
    echo -e "   CPU Usage:   ${C}3%${NC}     RAM Usage:   ${P}7%${NC}     Network: ${G}● CONNECTED${NC}\n"

    # DEPLOYMENT
    echo -e " ${C} DEPLOYMENT & SERVICES${NC}"
    echo -e " ${B}├─${NC} [1] VPS           ${B}├─${NC} [5] Themes"
    echo -e " ${B}├─${NC} [2] Panel         ${B}├─${NC} [6] System"
    echo -e " ${B}├─${NC} [3] Wings         ${B}├─${NC} [7] Container"
    echo -e " ${B}└─${NC} [8] ${G}New Module${NC}\n"

    # MAINTENANCE
    echo -e " ${P} MAINTENANCE & TOOLS${NC}"
    echo -e " ${B}├─${NC} [4] Toolbox              ${B}└─${NC} ${R} [0] SHUTDOWN SYSTEM ${NC}"
    echo -e " ${B}└─${NC} [9] Extras\n"

    echo -e " ${B}────────────────────────────────────────────────────────────────────────────────${NC}"
    echo -ne " ${C}➜ Enter Option (0-9): ${NC}"
}

render_menu
read -r opt
