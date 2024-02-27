#!/bin/zsh

source ~/scripts/fzf/fzf.sh

cd ~/Downloads

selected_file=$(fzf_with_bindings)

if [ -n "$selected_file" ]; then
    nohup zathura "$selected_file" >/dev/null 2>&1 &
fi
