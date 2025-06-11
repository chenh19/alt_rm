#!/bin/bash
TEXT_YELLOW=$(tput bold; tput setaf 3)
TEXT_RESET=$(tput sgr0)
read -n1 -s -r -p "$(echo -e $TEXT_YELLOW'\nWARNING! Remove all trashed files permanently? [y/n]'$TEXT_RESET)"$'\n' choice
case "$choice" in
  y|Y )
  shopt -s nullglob
  rm -rf ~/.trash/*
  shopt -u nullglob
  echo -e "\n${TEXT_YELLOW}Files deleted permanently. ${TEXT_RESET}\n";;
  * )
  echo -e "\n${TEXT_YELLOW}Deletion cancelled. ${TEXT_RESET}\n";;
esac
echo -e "[Desktop Entry]\nIcon=folder-trash" > ~/.trash/.directory
