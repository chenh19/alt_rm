#!/bin/bash
TRASH_DIR="${HOME}/.trash"
[ ! -d "$TRASH_DIR" ] && mkdir -p "$TRASH_DIR"
for file in "$@"; do
    [[ "$file" == -* ]] && continue
    if [ -e "$file" ]; then
        dest="${TRASH_DIR}/$(basename "$file")"
        while [ -e "$dest" ]; do dest="${TRASH_DIR}/$(basename "$file").~$((++counter))~"; done
        mv -f "$file" "$dest"
    else
        echo "Warning: $file not found" >&2
    fi
done
