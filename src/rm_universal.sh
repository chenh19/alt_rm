#!/bin/bash
[ ! -d "$HOME/.trash/" ] && mkdir -p "$HOME/.trash/"
if [ $# -eq 0 ]; then echo "rm: missing operand" >&2 && exit 1; fi
for file in "$@"; do
    [[ "$file" == -* ]] && continue
    if [ -e "$file" ]; then
        trash="$HOME/.trash/$(basename "$file")"
        counter=1
        while [ -e "$trash" ]; do trash="$HOME/.trash/$(basename "$file").~$((++counter))~"; done
        mv -f "$file" "$trash"
    else
        echo "rm: cannot remove '$file': No such file or directory" >&2
    fi
done
