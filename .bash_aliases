#-------------------------------------------------- ALIASES --------------------------------------------------#
#-> USEFUL STUFF
#PDFtoPNG: convert -trim -density 300 XXX.pdf XXX.png
#ROTATEPDF: pdftk in.pdf cat 1-endeast output out.pdf
#FIND: find . -name "yourfil*.extension"
#GREP: grep -r "yourstring" *
#USEFUL STUFF: history (see history of commands), jobs -l (see active jobs)

#-> SHORTCUTS
alias uni='cd ${HOME}/Dropbox/University'
alias db='cd ${HOME}/Dropbox'
alias ana='cd ${HOME}/HEP/HVtask/analysis'

#-> PERSONAL ALIASES
alias fav='less ${HOME}/.bash_aliases'
alias modfav='gedit ${HOME}/.bash_aliases; source ${HOME}/.bash_aliases'
alias sourcefav='source ${HOME}/.bash_aliases'
alias rooq='root -l -b -q'
alias tb='root ${HOME}/Documents/TBrowser/tb.C'
alias vir='vim -R'
alias ap='func_absolutepath'
alias ticket='kinit -A sporzio'
alias myssh='func_ssh'
alias mygit='func_git'
alias myclip='func_clip'
alias mountub='func_mountuboone'
alias unmountub='func_unmountuboone'
alias e='func_emacs'


#-> REDEFINING COMMANDS
alias ls='ls -BCFX --color=auto'
alias grep='grep --color=auto'
alias root='root -l'
alias open='gnome-open'

#-> MOVING STUFF BETWEEN SERVERS
alias heppull='scp -r davide@hepgpu1.hep.manchester.ac.uk:/afs/hep.man.ac.uk/u/davide/GetHome ${HOME}/HEP/'
alias heppush='scp -r ${HOME}/HEP/GetOffice davide@hepgpu1.hep.manchester.ac.uk:/afs/hep.man.ac.uk/u/davide/'
alias upull='scp -r sporzio@uboonegpvm01.fnal.gov:/afs/fnal.gov/files/home/room3/sporzio/Uploads ${HOME}/HEP'
alias upush='scp -r ${HOME}/HEP/Downloads porzio@uboonegpvm01.fnal.gov:/afs/fnal.gov/files/home/room3/sporzio/'


#-> PERSONAL FUNCTIONS
func_ssh(){
 if [ $1 == "uboone" ]; then
  	echo "> ssh sporzio@uboonegpvm01.fnal.gov"
  	ssh sporzio@uboonegpvm01.fnal.gov
 else
 	echo "> ssh -X -Y davide@${1}.hep.manchester.ac.uk"
  	ssh -X -Y davide@${1}.hep.manchester.ac.uk
 fi
}
func_git(){
 git add -A :/
 git commit -m "auto"
 git push origin ${1}
}
gpp(){
	g++ $1
	./a.out
	rm a.out
}
func_mountuboone(){
	echo "# Mounting uboonegpvm01"
	if [ $1 == "app" ]; then
		echo "> sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/app/users/sporzio ${HOME}/FNAL"
		sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/app/users/sporzio ${HOME}/FNAL
	elif [ $1 == "data" ]; then
		echo "> sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/data/users/sporzio ${HOME}/FNAL"
		sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/data/users/sporzio ${HOME}/FNAL
	else
		echo "> sshfs sporzio@uboonegpvm01.FNAL.GOV:${1} ${HOME}/FNAL"
		sshfs sporzio@uboonegpvm01.FNAL.GOV:${1} ${HOME}/FNAL
	fi
	echo "> cd ${HOME}/FNAL"
	cd ${HOME}/FNAL
}
func_unmountuboone(){
	echo "# Unmounting uboonegpvm01"
	echo "> fusermount -u ${HOME}/FNAL"
	fusermount -u ${HOME}/FNAL
}
func_clip(){
	echo "> ${1} | xclip -selection c"
	${1} | xclip -selection c
}
func_absolutepath(){
	echo ${PWD}/${1}
}
func_emacs(){
emacs ${@} & 
}
#-------------------------------------------------------------------------------------------------------------#


