#!/bin/bash
rm -rf rime && mkdir rime
find . -maxdepth 1 -name '*.yaml' -not -name 'installation*.yaml' -not -name 'squirrel*.yaml' -exec cp -L {} rime/ \;
cp ./essay.txt rime/
cp installation-trime.yaml rime/installation.yaml
cp -R build_data rime/build

# Copy userdb manually before trime support synchronizing userdb
cp -R ~/.config/fcitx/rime/*.userdb rime/
