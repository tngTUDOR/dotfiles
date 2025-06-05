# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs anaconda)
#ZSH_THEME="powerlevel9k/powerlevel9k"

#ZSH_THEME="materialshell"
ZSH_THEME="spaceship"
source ~/.spaceshiprc.zsh
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  alias-tips
  dnf 
#  mvn 
#  gradle
  chucknorris 
  python 
  z 
  ssh-agent 
  docker 
#  kubectl
  zsh-autosuggestions
  zsh-syntax-highlighting
  spaceship-vi-mode
  virtualenv
)
zstyle :omz:plugins:ssh-agent agent-forwarding on


source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=~/.local/bin/:$PATH

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
  export GPG_TTY=$(tty)
else
  export EDITOR='nvim.appimage'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
alias vtop="vtop --theme gruvbox"

# kitty in ubuntu 22 is broken, using local one
alias kittyl="$HOME/.local/kitty.app/bin/kitty"

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"

# alias tips exclusions
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_ ll gloga"



export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# GO path
#
export GOPATH=$HOME/workspaces/go

export PATH=$PATH:/usr/libexec/rstudio/bin

export PATH=$PATH:/opt/sonar-scanner-cli-linux/bin

set encoding=utf-8

export PATH="$HOME/.poetry/bin:$PATH"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Add cargo generated binnaries to path
export PATH="$HOME/.cargo/bin:$PATH"

# Add sonar scanner
export PATH="$HOME/.local/share/sonar-scanner/bin:$PATH"

# dot files
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/navarrete_31625/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/navarrete_31625/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/navarrete_31625/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/navarrete_31625/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/navarrete_31625/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/navarrete_31625/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# ubuntu specific stuff
alias bat="/usr/bin/batcat"
alias nvim="$HOME/.local/bin/nvim.appimage"

# eza is the new ls
alias ll="eza -l --git"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export REQUESTS_CA_BUNDLE=$HOME/netskope_certs/Netskope.pem
#export CURL_CA_BUNDLE=$HOME/netskope_certs/Netskope.pem
#export NODE_EXTRA_CA_CERTS=$HOME/netskope_certs/Netskope.pem


. "$HOME/.local/bin/env"
