#!/bin/bash

urls=(
https://github.com/rime/rime-prelude/raw/master/default.yaml
https://github.com/rime/rime-prelude/raw/master/key_bindings.yaml
https://github.com/rime/rime-prelude/raw/master/punctuation.yaml
https://github.com/rime/rime-prelude/raw/master/symbols.yaml
https://github.com/rime/rime-essay/raw/master/essay.txt
)

for url in ${urls[@]}; do
  wget -O $(basename $url) $url
done
