#!/bin/sh
tmux has-session -t uboonesession
if [ $? != 0 ]; then
    tmux new-session -s uboonesession -n uboonegpvm1 -d
    tmux new-window -n uboonegpvm2 -t uboonesession
    tmux new-window -n mountpoint -t uboonesession
    #tmux split-window -h -t uboonesession:3
    tmux send-keys -t uboonesession:1 'clear' C-m
    tmux send-keys -t uboonesession:1 'ssh sporzio@uboonegpvm01.fnal.gov' C-m
    tmux send-keys -t uboonesession:2 'clear' C-m
    tmux send-keys -t uboonesession:2 'ssh sporzio@uboonegpvm01.fnal.gov' C-m
#    if [ "$(ls -A /home/sdporzio/FNAL)" ]; then
    tmux send-keys -t uboonesession:3 'sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/app/users/sporzio /home/sdporzio/FNAL' C-m
    tmux send-keys -t uboonesession:3 'cd /home/sdporzio/FNAL' C-m
    tmux send-keys -t uboonesession:3 'clear' C-m
    tmux send-keys -t uboonesession:3 'ls' C-m
    #tmux send-keys -t uboonesession:3.2 'clear' C-m
    #tmux send-keys -t uboonesession:3.2 'ls' C-m
    tmux select-window -t uboonesession:1
fi
tmux attach -t uboonesession


# ORIGINAL SCRIPT
# tmux has-session -t development
# if [ $? != 0 ]; then
#     tmux new-session -s development -n editor -d
#     tmux send-keys -t development 'cd /var/www/htdocs/' C-m
#     tmux send-keys -t development 'vim' C-m
#     tmux split-window -v -t development
#     tmux split-window -v -t development
#     tmux select-layout -t development main-horizontal
#     tmux send-keys -t development:0.1 'cd /var/www/htdocs/' C-m
#     tmux new-window -n console -t development
#     tmux send-keys -t development:1 'cd /var/www/htdocs/' C-m
#     tmux select-window -t development:0
# fi
# tmux attach -t development
