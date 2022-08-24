#!/bin/bash
# Bulk covert images to 840*640 with old TV barell effect

input_file_types=(*.jpg *.png)
for i in "${input_file_types[@]}"; do 
    convert $i \
    -resize 800\!x600\! \
    -bordercolor black \
    -border 20 \
    -distort barrel '0.0 0.08 0.0' \
    mod_$i.jpg; 
done
