#!/usr/bin/env bash

if command -v ollama &> /dev/null; then
    exit 0
fi

sudo curl -fsSL https://ollama.com/install.sh | sh

### NON STANDARD OLLAMA INSTALLATION ###

# # check if $home/bin exists
# if [ ! -d "$HOME/bin" ]; then
#     # print and exit
#     echo "Directory $HOME/bin does not exist"
#     exit 1
# fi

# # install ollama
# cd "$HOME/bin"
# curl -L https://ollama.com/download/ollama-linux-amd64.tgz -o ollama-linux-amd64.tgz
# tar -C "$HOME/bin" -xzf ollama-linux-amd64.tgz
# rm ollama-linux-amd64.tgz
