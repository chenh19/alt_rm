#!/bin/bash

# set terminal font color
TEXT_YELLOW='\e[1;33m'
TEXT_GREEN='\e[1;32m'
TEXT_RESET='\e[0m'

# notify start
echo -e " \n${TEXT_YELLOW}Installing alternative <rm> command...${TEXT_RESET} \n" && sleep 1

# deploy shell scripts
[ ! -d ~/.trash/ ] && mkdir ~/.trash/ && cd ~/.trash/ && sleep 1
[ ! -f alt_rm.zip ] && wget -q https://codeload.github.com/chenh19/alt_rm/zip/refs/heads/main -O alt_rm.zip && sleep 1
unzip -o -q alt_rm.zip && rm alt_rm.zip && sleep 1
mv -f ./alt_rm-main/src/rm.sh ~/.rm.sh && mv -f ./alt_rm-main/src/rm-perm.sh ~/.rm-perm.sh && rm -rf ~/.trash/* && sleep 1

# set alias in bash
[ ! -f ~/.bashrc] ] && touch ~/.bashrc
echo -e "\nalias rm='bash ~/.rm.sh'\nalias rm-clean='bash ~/.rm-clean.sh'" >> ~/.bashrc

# notify end
echo -e "${TEXT_GREEN}Alternative <rm> command configured! Please reopen terminal before using the command. ${TEXT_RESET} \n" && sleep 1
