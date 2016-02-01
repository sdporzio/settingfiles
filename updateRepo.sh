#!/bin/sh

cp ../.bashrc .bashrc
cp ../.bash_aliases .bash_aliases
cp ../.emacs .emacs
cp ../.tmux.conf .tmux.conf
myssh master
