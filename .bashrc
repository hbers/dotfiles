#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias anime='trackma-curses'
alias update='echo yaourt -Syua && yaourt -Syua'
alias install='yaourt'
alias remove='sudo pacman -Rns'
alias searchin='pacman -Qs'
alias rss='newsbeuter'
alias music='ncmpcpp'
alias suspend='systemctl suspend'
alias locate='locate -i'
alias ytdl='youtube-dl'
alias altyazı='subberthehut -a -l tr --same-name'
alias subtitle='subberthehut -a --same-name'
alias df='df -h' 
alias manga='manga_downloader'
alias updatedb='sudo updatedb'
shopt -s checkwinsize
shopt -s autocd

PS1='[\u@\h \w]\$ '
