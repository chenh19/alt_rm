#!/bin/bash

# set terminal font color
TEXT_YELLOW='\e[1;33m'
TEXT_GREEN='\e[1;32m'
TEXT_RESET='\e[0m'

# notify start
echo -e " \n${TEXT_YELLOW}Configuring alternative <rm> command... ${TEXT_RESET} \n" && sleep 1

# deploy shell scripts
[ ! -d ~/.trash/ ] && mkdir ~/.trash/
cd ~/.trash/
[ ! -f alt_rm.zip ] && wget -q https://codeload.github.com/chenh19/alt_rm/zip/refs/heads/main -O alt_rm.zip && sleep 1
unzip -o -q alt_rm.zip && rm alt_rm.zip && sleep 1
mv -f ./alt_rm-main/src/rm.sh ~/.rm.sh && mv -f ./alt_rm-main/src/rm-check.sh ~/.rm-check.sh && mv -f ./alt_rm-main/src/rm-purge.sh ~/.rm-purge.sh && rm -rf ./alt_rm-main/ && sleep 1

# set alias in bash
[ ! -f ~/.bashrc] ] && touch ~/.bashrc
if ! grep -q "alias rm='bash ~/.rm.sh >/dev/null 2>&1'" ~/.bashrc ; then echo -e "alias rm='bash ~/.rm.sh >/dev/null 2>&1'" >> ~/.bashrc ; fi
if ! grep -q "alias rm-check='bash ~/.rm-check.sh'" ~/.bashrc ; then echo -e "alias rm-check='bash ~/.rm-check.sh'" >> ~/.bashrc ; fi
if ! grep -q "alias rm-purge='bash ~/.rm-purge.sh'" ~/.bashrc ; then echo -e "alias rm-purge='bash ~/.rm-purge.sh'" >> ~/.bashrc ; fi

# notify end
echo -e "${TEXT_GREEN}Alternative ${TEXT_YELLOW}<rm>${TEXT_GREEN} command configured! Please reopen terminal before using the command. ${TEXT_RESET} \n" && sleep 1
