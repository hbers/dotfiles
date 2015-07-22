#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mv='mv -v'
alias cp='cp -v'
alias grep='grep --color=auto -i'
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
alias hc='herbstclient'
alias adb-connect='adb connect 192.168.1.128'
alias feh='feh_browser'
alias torrent='transmission-remote-cli'
alias radio='mpc current >> Belgeler/radio'
export EDITOR=vim
shopt -s checkwinsize
shopt -s autocd
eval $(dircolors -b)
PS1='[\u@\h \w]\$ '
