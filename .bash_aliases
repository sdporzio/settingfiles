

#-------------------------------------------------- ALIASES --------------------------------------------------#
#-> USEFUL STUFF
#PDFtoPNG: convert -trim -density 300 XXX.pdf XXX.png
#ROTATEPDF: pdftk in.pdf cat 1-endeast output out.pdf
#FIND: find . -name "yourfil*.extension"
#GREP: grep -r "yourstring" *
#USEFUL STUFF: history (see history of commands), jobs -l (see active jobs)

#-> SHORTCUTS
alias uni='cd /home/sdporzio/Dropbox/University'
alias db='cd /home/sdporzio/Dropbox'
alias ana='cd /home/sdporzio/HEP/HVtask/analysis'

#-> PERSONAL ALIASES
alias fav='less /home/sdporzio/.bash_aliases'
alias modfav='gedit /home/sdporzio/.bash_aliases'
alias sourcefav='source /home/sdporzio/.bash_aliases'
alias rooq='root -l -b -q'
alias tb='root /home/sdporzio/Documents/TBrowser/tb.C'
alias vir='vim -R'
alias ticket='kinit -A sporzio'
alias ap='func_absolutepath'
alias myssh='func_ssh'
alias mygit='func_git'
alias myclip='func_clip'
alias mountub='func_mountuboone'
alias unmountub='func_unmountuboone'
alias checkweight='sudo du -h --max-depth=1 | sort -hr'

#-> REDEFINING COMMANDS
alias ls='ls -BCFX --color=auto'
alias grep='grep --color=auto'
alias root='root -l'
alias open='gnome-open'

#-> MOVING STUFF BETWEEN SERVERS
alias heppull='scp -r davide@hepgpu1.hep.manchester.ac.uk:/afs/hep.man.ac.uk/u/davide/GetHome /home/sdporzio/HEP/'
alias heppush='scp -r /home/sdporzio/HEP/GetOffice davide@hepgpu1.hep.manchester.ac.uk:/afs/hep.man.ac.uk/u/davide/'
alias upull='scp -r sporzio@uboonegpvm01.fnal.gov:/afs/fnal.gov/files/home/room3/sporzio/Uploads /home/sdporzio/HEP'
alias upush='scp -r /home/sdporzio/HEP/Downloads porzio@uboonegpvm01.fnal.gov:/afs/fnal.gov/files/home/room3/sporzio/'


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
		echo "> sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/app/users/sporzio /home/sdporzio/FNAL"
		sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/app/users/sporzio /home/sdporzio/FNAL
	elif [ $1 == "data" ]; then
		echo "> sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/data/users/sporzio /home/sdporzio/FNAL"
		sshfs sporzio@uboonegpvm01.FNAL.GOV:/uboone/data/users/sporzio /home/sdporzio/FNAL
	else
		echo "> sshfs sporzio@uboonegpvm01.FNAL.GOV:${1} /home/sdporzio/FNAL"
		sshfs sporzio@uboonegpvm01.FNAL.GOV:${1} /home/sdporzio/FNAL
	fi
	echo "> cd /home/sdporzio/FNAL"
	cd /home/sdporzio/FNAL
}
func_unmountuboone(){
	echo "# Unmounting uboonegpvm01"
	echo "> fusermount -u /home/sdporzio/FNAL"
	fusermount -u${1} /home/sdporzio/FNAL
}
func_clip(){
	echo "> ${1} | xclip -selection c"
	${1} | xclip -selection c
}
func_absolutepath(){
	echo "$PWD/${1}";
}


#-------------------------------------------------------------------------------------------------------------#


