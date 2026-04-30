#!/usr/bin/env bash

# --- BLACKOUT THEME COLORS ---
B='\033[1;30m'       # Deep Gray (Blackish)
W='\033[1;37m'       # Dim White
R='\033[0;31m'       # Blood Red
DG='\033[0;38;5;236m' # Darker Gray (for lines)
NC='\033[0m'         # Reset

render_menu() {
    clear
    # MINIMALIST STATUS BAR
    echo -e "${B}[ 65c2dcb5d72a ] [ 🕒 3d 1h 28m ] [ 🔋 35% ] [ 🖥️ 4% / 7% ]${NC}"
    
    # BLACKOUT LOGO
    echo -e "${W}"
    cat << "EOF"
  _  _  _  _  _  _  _  _    _  _  _  _  _  _  _  _ 
 / _  _  _  _  _  _  _ \  / _  _  _  _  _  _  _ \

| /           / /      \|| /           / /      \|
| |          / /       /|| |          / /       /|
| \ _  _  _ / / _  _  / /| \ _  _  _ / / _  _  / /
 \ _  _  _  _  _  _  _ /  \ _  _  _  _  _  _  _ / 
EOF
    echo -e "       ${B}BLACKOUT EDITION - OBSIDIAN NEXT GEN${NC}"
    echo -e "${DG}──────────────────────────────────────────────────────────────────────────────${NC}"

    # SYSTEM STATUS (Grayscale)
    echo -e " ${W}● SYSTEM STATUS${NC}"
    echo -e "   CPU: ${B}4%${NC}   RAM: ${B}7%${NC}   NET: ${B}ONLINE${NC}\n"

    # DEPLOYMENT (Dark Theme)
    echo -e " ${B}┌ DEPLOYMENT & SERVICES${NC}"
    echo -e " ${B}│${NC} [1] VPS           ${B}│${NC} [5] Themes"
    echo -e " ${B}│${NC} [2] Panel         ${B}│${NC} [6] System"
    echo -e " ${B}│${NC} [3] Wings         ${B}│${NC} [7] Container"
    echo -e " ${B}│${NC} [8] New Module${NC}\n"

    # MAINTENANCE (Deep Red Highlight)
    echo -e " ${R}┌ MAINTENANCE & TOOLS${NC}"
    echo -e " ${R}│${NC} [4] Toolbox       ${R}└─ [0] SHUTDOWN${NC}"
    echo -e " ${R}│${NC} [9] Extras${NC}"
    echo -e "${DG}──────────────────────────────────────────────────────────────────────────────${NC}"
    
    echo -ne " ${W}→ Option: ${NC}"
}

render_menu
read -r choice
