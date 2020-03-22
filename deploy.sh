#!/bin/bash
mkdir -p ~/.config/fcitx/rime && rm ~/.config/fcitx/rime/*.yaml && cp *.yaml ~/.config/fcitx/rime
mkdir -p ~/.config/fcitx/rime/build && cp build_data/* ~/.config/fcitx/rime/build/
