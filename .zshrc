export EDITOR=vim

[[ $- != *i* ]] && return

# Useful shortcuts
alias ls='ls --color=auto'
alias ll='ls -lah'
alias pls='sudo'
alias yolo='sudo pacman -Syyu'
alias music='mpd && ncmpcpp'
alias screenfetch='screenfetch -c 4,'
alias nano='vim'
alias :q='exit'
alias zu='su -s /bin/zsh'

# Plug in 1080p monitor
alias monabove='xrandr --output LVDS --auto --pos 277x1080 --output VGA-0 --auto --pos 0x0'
alias monleft='xrandr --output VGA-0 --mode 1920x1080 --left-of LVDS'
alias monright='xrandr --output VGA-0 --mode 1920x1080 --right-of LVDS'
alias monoff='xrandr --output VGA-0 --off'

# Keyboard was plugged in, so set it up.
alias keyboardsetup="setxkbmap -layout us -variant altgr-intl -option caps:swapescape && xset r rate 300 45"
# Disable internal keyboard & mouse
alias disabletouchpad='xinput set-int-prop 14 "Device Enabled" 8 0'
alias enabletouchpad='xinput set-int-prop 14 "Device Enabled" 8 1'
alias disablekeyboard='xinput set-int-prop 13 "Device Enabled" 8 0'
alias enablekeyboard='xinput set-int-prop 13 "Device Enabled" 8 1'

# Quick setup work environment
alias quicksetup='keyboardsetup && disabletouchpad && disablekeyboard && monabove'
alias quickunset='enabletouchpad && enablekeyboard && monoff'

# SSH aliases
if [ -f ~/.ssh-aliases ]; then
	source ~/.ssh-aliases
fi

# Custom prompt
autoload -U colors
colors
PROMPT=" > "
RPROMPT="%{$fg_bold[black]%}%n@%M:%{$fg_bold[blue]%}%~%{$reset_color%}   "

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/xavier/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
