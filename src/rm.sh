#!/bin/bash
[ ! -d ~/.trash/ ] && mkdir ~/.trash/
for a; do
   shift
   case $a in
   -*) opts+=("$a");;
   *) set -- "$@" "$a";;
   esac
done
mv -f "${@%$'\n'}" ~/.trash/
#mv -f --backup=numbered "${@%$'\n'}" ~/.trash/
