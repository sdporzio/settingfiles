#!/bin/sh
tmux has-session -t tmux
if [ $? != 0 ]; then
    tmux new-session -s tmux -n bash -d
fi
tmux attach -t tmux
