#!/bin/bash
luna_dict="./xhup_luna.dict.yaml"
luna_head="./xhup_luna.dict.yaml.head"
cat "$luna_head" > "$luna_dict"
for f in double_pinyin_flypy.*.dict.yaml; do
  sed -n 's/\t.*//p' "$f" >> "$luna_dict"
done