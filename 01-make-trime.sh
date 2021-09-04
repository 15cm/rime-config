#!/bin/bash
set -e

sed -i 's/fcitx/trime/' rime/installation.yaml

# Copy userdb manually before trime support synchronizing userdb.
cp -R ~/.local/share/fcitx5/rime/*.userdb rime/

# External fonts.
mkdir -p fonts
wget iij.dl.sourceforge.jp/hanazono-font/62072/hanazono-20141012.zip -O HanaMin.zip \
  && unzip HanaMin.zip -d HanaMin \
  && mv HanaMin/HanaMinB.ttf fonts/ \
  && rm -r HanaMin.zip HanaMin
