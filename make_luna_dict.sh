#!/bin/bash
luna_dict="./xhup_luna.dict.yaml"
luna_head="./xhup_luna.dict.yaml.head"
cat "$luna_head" > "$luna_dict"
for f in extend.sougou.*.dict.yaml; do
  echo "#$f" >> "$luna_dict"
  sed -n 's/\t.*//p' "$f" >> "$luna_dict"
done
