#init rbenv
eval "$(rbenv init -)"
# Path to your oh-my-zsh installation.
export ZSH=/Users/markhutter/.oh-my-zsh
export GOPATH=$HOME/go
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin" # Add RVM to PATH for scripting
#source $HOME/.rvm/scripts/rvm


bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

# export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin/:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
alias git="noglob git"
alias pg="pgcli "
# alias vim="/usr/local/Cellar/vim/"
alias reload="source ~/.zshrc"
alias gpo="git pull origin "
alias gs="git status"
alias dev="development"
alias mr="master"
alias gco="git checkout "
alias br="git branch"
alias gpush="git push origin "
alias gcommit="git commit -m '$1'"
alias gprune="git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"
alias bi="bundle install"
alias rc="rails c"
alias rs="rails s"
alias dbm="rake db:migrate"
alias dbs="rake db:setup"
alias dbc="rake db:create"
alias dbd="rake db:drop"
alias review="git diff development"
alias v="nvim"
alias hs="history | grep "
alias dl="cd ~/Downloads"
alias code="cd ~/code"
alias pgstage=""
alias pgprod=""
alias pglocal=""
alias td="vim ~/todos.txt"
alias resettd="cp ~/basetodos.txt ~/todos.txt"
alias wer="bundle exec rspec "
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias gpall="find . -type d -depth 1 -exec echo git --git-dir={}/.git --work-tree=$PWD/{} status \;"
alias start="vim ~/.dotfiles/morning_checklist.txt"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

