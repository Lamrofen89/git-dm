#!/bin/bash

items=$(ls -A /var/)

for item in $items; do
    echo $item
done