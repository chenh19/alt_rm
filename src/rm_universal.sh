#!/bin/bash
[ ! -d "$HOME/.trash/" ] && mkdir -p "$HOME/.trash/"
for file in "$@"; do
    [[ "$file" == -* ]] && continue
    if [ -e "$file" ]; then
        dest="$HOME/.trash/$(basename "$file")"
        while [ -e "$dest" ]; do dest="$HOME/.trash/$(basename "$file").~$((++counter))~"; done
        mv -f "$file" "$dest"
    else
        echo "Warning: $file not found" >&2
    fi
done
