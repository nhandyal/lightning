#!/usr/bin/env bash

if [ ! -d "$HOME/bin" ]; then
    mkdir -p "$HOME/bin"
    echo 'export PATH=$HOME/bin:$PATH' >> "$HOME/.zshrc"
fi