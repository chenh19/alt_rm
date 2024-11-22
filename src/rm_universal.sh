#!/bin/bash
[ ! -d "$HOME/.trash/" ] && mkdir -p "$HOME/.trash/"
for file in "$@"; do
    [[ "$file" == -* ]] && continue
    if [ -e "$file" ]; then
        trash="$HOME/.trash/$(basename "$file")"
        while [ -e "$trash" ]; do trash="$HOME/.trash/$(basename "$file").~$((++counter))~"; done
        mv -f "$file" "$trash"
    else
        echo "Warning: $file not found" >&2
    fi
done
