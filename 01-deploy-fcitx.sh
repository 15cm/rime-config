#!/bin/bash
set -e

sed -i 's/trime/fcitx/' rime/installation.yaml

# Deploy to fcitx5 rime config
cp -R rime ~/.local/share/fcitx5/
