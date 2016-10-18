#!/bin/sh -ex

blender \
  --background \
  main.blend \
  --python preview.py \
  --render-format PNG \
  --render-output "//preview.png" \
  --render-frame 1

convert preview.png0001.png -scale '50%' preview.jpg
rm -f preview.png0001.png
