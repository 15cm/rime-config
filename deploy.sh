#!/bin/bash
set -e

# YAML
mkdir -p ~/.config/fcitx/rime
rm ~/.config/fcitx/rime/*.yaml
cp -L *.yaml ~/.config/fcitx/rime

# Binary
mkdir -p ~/.config/fcitx/rime/build
cp build_data/* ~/.config/fcitx/rime/build/
