#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTFILESIZE=
export HISTSIZE=
export EDITOR=vim
shopt -s checkwinsize
shopt -s autocd
eval $(dircolors -b)
PS1='[\u \w]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -v'
alias update='echo yaourt -Syua && yaourt -Syua'
alias remove='sudo pacman -Rns'
alias searchin='pacman -Qs'
alias anime='trackma-curses'
alias manga='cd ~/Belgeler/Manga/Reading/ && manga_downloader'
alias rss='newsbeuter'
alias music='ncmpcpp'
alias suspend='systemctl suspend'
alias ytdl='youtube-dl'
alias altyazı='subberthehut -a -l tr -s'
alias subtitle='subberthehut -a  -s'
alias updatedb='sudo updatedb'
alias adb-connect='adb connect 192.168.1.128'
alias fehh='feh_browser'
alias torrent='transmission-remote-cli'
alias radio='mpc current >> Belgeler/radio'
alias wd-ext-mount='sudo mount /dev/sdb1 /media/WD-EXT'
alias wd-ext-unmount='sudo umount /dev/sdb1'
alias wd-fat-mount='sudo mount -t vfat -o umask=000 /dev/sdb2 /media/WD-FAT'
alias wd-fat-unmount='sudo umount /dev/sdb2'
alias mtpmount='jmtpfs ~/.cache/mnt'
alias mtpumount='fusermount -u ~/.cache/mnt'
alias dotfiles='cd ~/.git/dotfiles'
