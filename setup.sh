#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'

export DEBIAN_FRONTEND=noninteractive
echo "force-confdef" > ~/.dpkg.cfg
echo "force-confold" >> ~/.dpkg.cfg

clear
echo -e "${YELLOW}"
echo "  ___  ___ _____ ______  "
echo " |  \\/  |/  ___|| ___ \\ "
echo " | .  . |\\ \`--. | |_/ / "
echo " | |\\/| | \`--. \\|    /  "
echo " | |  | |/\\__/ /| |\\ \\  "
echo " \\_|  |_/\\____/ \\_| \\_\\ "
echo -e "${NC}"

install_all() {
    echo -e "\n${GREEN}[*] Starting Installation...${NC}"
    
    echo -e "\n${BLUE}[+] Updating Packages...${NC}"
    yes | pkg update -y && yes | pkg upgrade -y
    
    echo -e "\n${BLUE}[+] Installing Core Packages...${NC}"
    yes | pkg install -y python python2 git bash curl wget nano unzip nmap ruby
    
    echo -e "\n${BLUE}[+] Configuring Environment...${NC}"
    gem install lolcat
    pip2 install fish requests bs4
    
    echo -e "\n${BLUE}[+] Installing Force-Clean...${NC}"
    if [ -d "Force-Clean" ]; then
        echo -e "${YELLOW}[!] Updating existing Force-Clean...${NC}"
        cd Force-Clean && git pull
    else
        git clone https://github.com/msrofficial/Force-Clean.git
        cd Force-Clean
    fi
    chmod +x install.sh
    printf "1\n" | ./install.sh
    cd ..
    
    echo -e "\n${BLUE}[+] Installing WiFuX...${NC}"
    curl -sLo installer.sh https://raw.githubusercontent.com/msrofficial/WiFuX/main/installer.sh
    chmod +x installer.sh
    yes | ./installer.sh
    
    echo -e "\n${BLUE}[+] Installing pyenc...${NC}"
    if [ -d "pyenc" ]; then
        cd pyenc && git pull && cd ..
    else
        git clone https://github.com/msrofficial/pyenc.git
    fi
    
    rm -f ~/.dpkg.cfg
    
    echo -e "\n${GREEN}[✓] Installation Complete!${NC}"
    echo -e "${YELLOW}\nUsage Instructions:"
    echo -e "1. Force-Clean: ${BLUE}Exit Termux & type 'boost'"
    echo -e "2. WiFuX: ${BLUE}Just type 'wifux'"
    echo -e "3. pyenc: ${BLUE}cd pyenc && python3 pyenc.py${NC}"
}

install_all
