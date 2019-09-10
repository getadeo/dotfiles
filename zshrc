if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2
fi

#export WORKON_HOME=~/Envs
#source /usr/bin/virtualenvwrapper.sh
#alias subl="subl3"
#alias docker rmi none="docker rmi -f $(docker images -q -f dangling=true)"
source <(antibody init)
