if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2
fi

#export WORKON_HOME=~/Envs
#source /usr/bin/virtualenvwrapper.sh
#alias subl="subl3"
#alias docker rmi none="docker rmi -f $(docker images -q -f dangling=true)"
source <(antibody init)
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

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

# Rails aliases
alias rs="rails s"
alias rc="rails c"

# Docker
alias dup="docker-compose stop && docker-compose up -d redis mailhog postgres elasticsearch job && docker-compose logs -f job"
alias dstop="docker-compose stop"

# Yarn
alias yw="yarn webpack"

# ngrok
alias ng="ngrok http -host-header=rewrite my.lvh.me:80"

# lvh setup
alias lvh="echo "rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 3000" | sudo pfctl -ef -\n"

# Vim
alias v="vim ."

# workspaces
alias workspace="cd ~/workspace"
alias talkpush="cd ~/workspace/talkpush/web-application"
alias playground="cd ~/workspace/playground"
alias dotfiles="cd ~/workspace/dotfiles"

