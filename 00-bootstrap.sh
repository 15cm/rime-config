#!/bin/bash
set -e

LUNA_PINYIN_SOGOU_DICT_VERSION=0.1.0

mkdir -p rime/build

config_urls=(
https://github.com/rime/rime-prelude/raw/master/default.yaml
https://github.com/rime/rime-prelude/raw/master/key_bindings.yaml
https://github.com/rime/rime-prelude/raw/master/punctuation.yaml
https://github.com/rime/rime-prelude/raw/master/symbols.yaml
https://github.com/rime/rime-essay/raw/master/essay.txt
https://github.com/15cm/rime-sogou-dictionaries/releases/download/v${LUNA_PINYIN_SOGOU_DICT_VERSION}/luna_pinyin.sogou.dict.yaml
)

for url in ${config_urls[@]}; do
  wget -O rime/$(basename $url) $url
done

build_data_urls=(
  https://github.com/imaojun/flypy-linux/raw/master/fcitx/rime-data/build/flypy.prism.bin
  https://github.com/imaojun/flypy-linux/raw/master/fcitx/rime-data/build/flypy.reverse.bin
  https://github.com/imaojun/flypy-linux/raw/master/fcitx/rime-data/build/flypy.table.bin
  https://github.com/imaojun/flypy-linux/raw/master/fcitx/rime-data/build/flypydz.prism.bin
  https://github.com/imaojun/flypy-linux/raw/master/fcitx/rime-data/build/flypydz.reverse.bin
  https://github.com/imaojun/flypy-linux/raw/master/fcitx/rime-data/build/flypydz.table.bin
)

mkdir -p build-data

for url in ${build_data_urls[@]}; do
  wget -O rime/build/$(basename $url) $url
done

cp *.yaml rime/
