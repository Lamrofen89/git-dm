#!/bin/bash

get_zad12() {
    local path="$1"
    local size_dm=$(du -hs "$path" 2>/dev/null | cut -f1)
    echo $size_dm
}

items=$(ls -A)

for item in $items; do
    size_dm=$(get_zad12 "$item")
    result+=("$size_dm $item")
done

printf "%s\n" "${result[@]}" | sort -rh | column -t
