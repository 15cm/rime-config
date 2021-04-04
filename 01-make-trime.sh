#!/bin/bash
set -e

sed -i 's/fcitx/trime/' rime/installation.yaml

# Copy userdb manually before trime support synchronizing userdb
cp -R ~/.local/share/fcitx5/rime/*.userdb rime/
