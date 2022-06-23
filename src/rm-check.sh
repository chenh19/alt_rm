#!/bin/bash
TEXT_YELLOW='\e[1;33m'
TEXT_RESET='\e[0m'
echo -e " \n${TEXT_YELLOW}These are the trashed file: ${TEXT_RESET} \n"
ls ~/.trash/
echo ""
