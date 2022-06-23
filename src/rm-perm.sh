#!/bin/bash
TEXT_YELLOW='\e[1;33m'
TEXT_RESET='\e[0m'
read -n1 -s -r -p "$(echo -e $TEXT_YELLOW' \nWARNING! Remove all trashed files permanently? [y/n]'$TEXT_RESET)"$' \n' choice
case "$choice" in
  y|Y )
  rm -rf ~/.trash/*
  echo -e " \n${TEXT_YELLOW}Files deleted permanently. ${TEXT_RESET} \n";;
  n|N )
  echo -e " \n${TEXT_YELLOW}Deletion cancelled. ${TEXT_RESET} \n";;
  * )
  echo -e " \n${TEXT_YELLOW}Deletion cancelled. ${TEXT_RESET} \n";;
esac
