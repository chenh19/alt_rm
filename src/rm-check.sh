#!/bin/bash
TEXT_YELLOW=$(tput bold; tput setaf 3)
TEXT_RESET=$(tput sgr0)
echo -e " \n${TEXT_YELLOW}These are the trashed files: ${TEXT_RESET} \n"
ls ~/.trash/
echo ""
