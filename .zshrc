# Path to your oh-my-zsh installation.
export ZSH=/home/seysn/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="bullet-train"

# disable touchscreen
xinput set-prop 'USBest Technology SiS HID Touch Controller' 'Device Enabled' 0

# screenFetch
screenfetch && echo

# mask rwxr-xr-x
umask 022

# keyboard Layout French
setxkbmap fr

# path
export PATH="/home/seysn/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/binx:/sbin:/bin:/home/seysn/scripts:/usr/bin/X11:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

# editor
export EDITOR='vim'

# avoid errors
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# some shortcuts
alias git='LANG=en_GB git'
alias ls='ls -hF'
alias la='ls -alhF'
alias ll='ls -lhF'
alias df="df -h"
alias color='export COLOR=--color'
alias nocolor='export COLOR='
alias feh='feh -F'
alias subl='subl3'
alias subl2='/home/seysn/SublimeText2/sublime_text 2>/dev/null'
alias ssubl='sudo /home/seysn/SublimeText2/sublime_text'
alias idea="/home/seysn/Documents/idea-IU-141.178.9/bin/idea.sh"
alias androidstudio="/home/seysn/Documents/android-studio/bin/studio.sh"
alias netbeans="/home/seysn/Documents/netbeans-8.0.2/bin/netbeans"

# ex - archive extractor
ex () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1   ;;
			*.tar.gz)    tar xzf $1   ;;
			*.tar.xz)    tar xf $1    ;;
			*.bz2)       bunzip2 $1   ;;
			*.rar)       unrar x $1   ;;
			*.gz)        gunzip $1    ;;
			*.tar)       tar xf $1    ;;
			*.tbz2)      tar xjf $1   ;;
			*.tgz)       tar xzf $1   ;;
			*.zip)       unzip $1     ;;
			*.Z)         uncompress $1;;
			*.7z)        7z x $1      ;;
			*)           echo "'$1' cannot be extracted via ex()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"