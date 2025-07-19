#!/bin/bash

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

# Banner
clear
echo -e "${YELLOW}"
echo "  ___  ___ _____ ______  "
echo " |  \\/  |/  ___|| ___ \\ "
echo " | .  . |\\ \`--. | |_/ / "
echo " | |\\/| | \`--. \\|    /  "
echo " | |  | |/\\__/ /| |\\ \\  "
echo " \\_|  |_/\\____/ \\_| \\_\\ "
echo -e "${NC}"

# Auto-install Force-Clean
install_forceclean() {
    echo -e "\n${BLUE}[+] Installing Force-Clean...${NC}"
    if [ -d "Force-Clean" ]; then
        echo -e "${YELLOW}[!] Updating existing Force-Clean...${NC}"
        cd Force-Clean && git pull
    else
        git clone https://github.com/msrofficial/Force-Clean.git
        cd Force-Clean
    fi
    
    chmod +x install.sh
    # Automatically send '1' to the installation prompt
    echo "1" | ./install.sh
    cd ..
    
    echo -e "\n${GREEN}[✓] Force-Clean Installed!${NC}"
    echo -e "${YELLOW}Note: Exit Termux and run ${BLUE}'boost'${YELLOW} to use Force-Clean${NC}"
}

# Main Function
main() {
    # Basic Packages
    echo -e "\n${BLUE}[+] Installing Basic Packages...${NC}"
    pkg update -y && pkg upgrade -y
    pkg install -y python python2 git bash curl wget nano unzip nmap ruby
    gem install lolcat
    pip2 install fish requests bs4
    
    # Install Tools
    install_forceclean
    
    # WiFuX
    echo -e "\n${BLUE}[+] Installing WiFuX...${NC}"
    curl -sLo installer.sh https://raw.githubusercontent.com/msrofficial/WiFuX/main/installer.sh
    chmod +x installer.sh
    ./installer.sh
    
    # pyenc
    echo -e "\n${BLUE}[+] Installing pyenc...${NC}"
    if [ -d "pyenc" ]; then
        cd pyenc && git pull && cd ..
    else
        git clone https://github.com/msrofficial/pyenc.git
    fi
    
    # Completion Message
    echo -e "\n${GREEN}[✓] All Tools Ready!${NC}"
    echo -e "${YELLOW}\nQuick Commands:"
    echo -e "1. Force-Clean: ${BLUE}Exit Termux & type 'boost'"
    echo -e "2. WiFuX: ${BLUE}Just type 'wifux'"
    echo -e "3. pyenc: ${BLUE}cd pyenc && python3 pyenc.py${NC}"
}

# Run
main
