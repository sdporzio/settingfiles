#!/bin/sh

echo "> cp ../.bashrc .bashrc"
cp ../.bashrc .bashrc
echo "> cp ../.bash_aliases .bash_aliases"
cp ../.bash_aliases .bash_aliases
echo "> cp ../.emacs .emacs"
cp ../.emacs .emacs
echo "> cp ../.tmux.conf .tmux.conf"
cp ../.tmux.conf .tmux.conf

echo "> git add -A :/"
git add -A :/
echo "> git commit -m 'auto'"
git commit -m "auto"
echo "> git push origin master"
git push origin master
