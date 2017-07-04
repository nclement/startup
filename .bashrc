# ~/.bashrc

# used for bash non-login shells.
# non-login shells include:
# * X sessions (xdm, gdm, kdm)
# * X Terminals (xterm, konsole, gnome-terminal)
# * running remote commands via ssh

# NOTE: some programs (ie, winscp) fail if this generates any output.

# first, source the system bashrc
if [ -r /etc/bashrc ]; then
    . /etc/bashrc
fi

# MAIL is used by mutt
export MAIL=/mail/${USER}/Maildir/

# default printer: change this to suit your needs.
# pr3swd is the duplex queue on our black and white laser printer in the
# southwest quadrant of the 3rd floor of ICES.
export PRINTER=cp2102

# default editor: this is used by svn, etc.
# the only safe default for EDITOR is one which instructs the user how to quit.
# most users will change this to vim or emacs.
export EDITOR=vim

# uncomment this to use a prompt which indicates exit status
#if [ -r /etc/bash/prompt ]; then
#    . /etc/bash/prompt
#fi

# pine aliases
alias alpine='alpine -passfile ~/.pinepass'
alias pine='alpine -passfile ~/.pinepass'

# add your customizations below
export WORK=/net/electron/workspace/nclement
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias ld='ls -latr'        #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
alias cdw='cd /net/electron/workspace/nclement/'
alias eclipse='/h2/nathan/Downloads/eclipse/eclipse'
alias grep='grep --exclude="*\.svn*" --color'
alias cvcwp='cd /var/www/html'
alias less='less -R'
alias pymol='/net/electron/workspace/nclement/software/pymol/pymol'

# Load the default modules
#source ~/.modules

export PS1='\[\e[1;34m\][\u@\h:\w]\[\e[m\] '

#QT stuff
export QTDIR=/org/centers/cvc/software/share/usr.linux.x86_64/share/qt-4.6.2
export PATH=$QTDIR/bin:$PATH
export PATH=/net/electron/workspace/nclement/scripts:$PATH
export PATH=/net/electron/workspace/nclement/software/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/net/electron/workspace/nclement/software/lib:/net/electron/workspace/nclement/software/lib64

alias MOLSURF=/net/electron/workspace/nclement/MolSurf/release/bin/MolSurf
alias MOLENERGY=/net/electron/workspace/nclement/MolEnergy/release/bin/MolEnergy
alias TEXMOL=/net/electron/workspace/nclement/Texmol/release/bin/TexMol

alias obabel=/net/electron/workspace/nclement/software/openbabel-2.3.2/build/bin/obabel

# New Java version
#export JAVA_HOME=/workspace/nclement/software/jdk1.7.0_55/

# Python path
export PYTHONPATH=/net/electron/workspace/nclement/python_lib/lib64/:$PYTHONPATH

# R should remember these paths
export R_PROFILE=/h2/nathan/.Renviron

# For amber
test -f /net/electron/workspace/nclement/software/amber16/amber.sh && source /net/electron/workspace/nclement/software/amber16/amber.sh

# For go
export GOROOT=/net/electron/workspace/nclement/software/go
export PATH=$PATH:$GOROOT/bin

# Set group bit.
umask 002
