#!/bin/bash

# set terminal font color
TEXT_YELLOW='\e[1;33m'
TEXT_GREEN='\e[1;32m'
TEXT_RESET='\e[0m'

# confirm and remove
echo ""
read -n1 -s -r -p "$(echo -e $TEXT_YELLOW'Remove alternative <rm> command? [y/n]'$TEXT_RESET)"$' \n' choice
case "$choice" in
  y|Y ) # notify start
        echo -e " \n${TEXT_YELLOW}Uninstalling alternative <rm> command... ${TEXT_RESET} \n" && sleep 1

        # remove alias
        if grep -q "alias rm='bash ~/.rm.sh'" ~/.bashrc ; then sed -i '/alias rm=/d' ~/.bashrc ; fi
        if grep -q "alias rm-check='bash ~/.rm-check.sh'" ~/.bashrc ; then sed -i '/alias rm-check=/d' ~/.bashrc ; fi
        if grep -q "alias rm-purge='bash ~/.rm-purge.sh'" ~/.bashrc ; then sed -i '/alias rm-purge=/d' ~/.bashrc ; fi
        sleep 1

        # remove shell scripts
        [ -f ~/.rm.sh ] && rm ~/.rm.sh
        [ -f ~/.rm-check.sh ] && rm ~/.rm-check.sh
        [ -f ~/.rm-purge.sh ] && rm ~/.rm-purge.sh
        sleep 1

        # notify end
        echo -e "${TEXT_GREEN}Alternative <rm> command removed! Please reopen the terminal. ${TEXT_RESET} \n";;

  * )   # notify end
        echo -e " \n${TEXT_GREEN}Alternative <rm> command not removed. ${TEXT_RESET} \n";;
esac

# notify trash files path
echo -e "${TEXT_YELLOW}Note: all trashed files remain in ~/.trash/ folder. ${TEXT_RESET} \n" && sleep 1
