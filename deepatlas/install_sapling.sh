#!/usr/bin/env bash

# check if $home/bin/bin/sl exists
if [ -f "$HOME/bin/bin/sl" ]; then
    exit 0
fi

curl -L -o sapling_0.2.20240718-145624+f4e9df48_amd64.Ubuntu20.04.deb https://github.com/facebook/sapling/releases/download/0.2.20240718-145624%2Bf4e9df48/sapling_0.2.20240718-145624%2Bf4e9df48_amd64.Ubuntu20.04.deb && \
    sudo apt install -y ./sapling_0.2.20240718-145624+f4e9df48_amd64.Ubuntu20.04.deb && \
    mkdir -p "$HOME/bin/bin" && \
    cp -n "$(which sl)" "$HOME/bin/bin" && \
    rm ./sapling_0.2.20240718-145624+f4e9df48_amd64.Ubuntu20.04.deb
