#!/bin/bash
TRASH_DIR="${HOME}/.trash"
[ ! -d "$TRASH_DIR" ] && mkdir -p "$TRASH_DIR"
for file in "$@"; do
    if [ -e "$file" ]; then
        base="${TRASH_DIR}/$(basename "$file")"
        counter=1
        while [ -e "$base.~$counter~" ]; do
            ((counter++))
        done
        mv -f "$file" "${base}${counter:+.~$counter~}"
    else
        echo "Warning: $file not found" >&2
    fi
done
