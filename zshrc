# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/genesistadeo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Plugins
source ~/.zplug/init.zsh
zplug "dracula/zsh", as:theme 
zplug load

# Screen or Tmux run as default
#if command -v tmux>/dev/null; then
#  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2
#fi

# Ctags executable
export PATH="/usr/local/bin:/usr/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source <(antibody init)

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Go
export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export GOENV=$GOPATH/go-workspace/pkg


# fzf settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'
export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always {} | head -500 "'



# Nvim Alias
alias vim="nvim"

# NVIM Config Path
export NVIMRC="~/.config/nvim/init.vim"

# Git aliases
alias ga="git add"
alias gs="git status"
alias gcm="git commit -m"
alias gpull="git pull"
alias gpush="git push"
alias gco="git checkout"
alias gr="git reset"
alias gm="git merge"
alias gstash="git stash"
alias gspop="git stash pop"
alias gd="git diff"
alias grs="git restore --staged"
alias gf="git fetch"

# Rails aliases
alias rs="RAILS_ENV=development bundle exec puma"
alias rc="RAILS_ENV=development bundle exec rails c"
alias sk="RAILS_ENV=development bundle exec sidekiq"

# Docker
alias dup="docker-compose stop && docker-compose up -d mailhog postgres elasticsearch && RAILS_ENV=development bundle exec sidekiq"
alias dstop="docker-compose stop"
alias drdangling="docker images -f 'dangling=true' -q"
alias dprune="docker image prune"

# Yarn
alias yw="yarn webpack"

# ngrok
alias ng="ngrok http -host-header=rewrite mustafar.lvh.me:80"
alias pldtng="ngrok http --region=ap --hostname=talkpush-pldt-demo.ap.ngrok.io -host-header=rewrite mustafar.lvh.me:80"

# lvh setup
alias lvh="echo "rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 3000" | sudo pfctl -ef -\n"

# Vim
alias v="vim ."

# workspaces
alias workspace="cd ~/workspace"
alias go-workspace="cd ~/go-workspace"
alias talkpush="cd ~/workspace/talkpush/web-application"
alias playground="cd ~/workspace/playground"
alias dotfiles="cd ~/workspace/dotfiles"
alias til="cd ~/workspace/til"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/sbin:$PATH"


export PROJECT_ID="talkpush-release-204682513ba3"
export REGION=us-west1
export ZONE=us-west1-a
export GKE_CLUSTER=web-app-gke-cluster
export GCR_IMAGE="gcr.io/talkpush-release-204682513ba3/talkpush:latest"

# Transmission settings
alias tsm="transmission-remote"
alias tsmd="transmission-daemon"
alias tsmlist="watch -n 1 transmission-remote -l"
alias tsmexit="transmission-remote --exit"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/genesistadeo/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/genesistadeo/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/genesistadeo/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/genesistadeo/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line
