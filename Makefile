initial-setup:
	sudo apt-get update
	sudo apt-get install -y git-core make gvim curl wget zsh tmux
	@curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	cp vimrc ~/.vimrc
	cp tmux.conf ~/.tmux.conf
	mkdir ~/.vim/colors && cp -rf colors/* ~/.vim/colors
	cp UltiSnips ~/.vim/UltiSnips
	curl -L http://install.ohmyz.sh | sh
	@chsh -s /bin/zsh 

copy:
	cp -rf ~/.vim/UltiSnips ~/Documents/dotfiles/UltiSnips                   
	cp ~/.vimrc ~/Documents/dotfiles/vimrc
