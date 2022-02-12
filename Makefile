initial-setup-mac:
	cp vimrc ~/.vimrc
	cp zsh_plugins.txt ~/.zsh_plugins.txt
	brew install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	brew doctor
	cat zshrc>> ~/.zshrc
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	antibody bundle < ~/.zsh_plugins.txt
	brew install rbenv
	brew tap homebrew/cask-fonts
	brew cask install font-fira-code
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
	source ~/.zshrc
	nvm install 12.10.0

copy:
	cp ~/.config/nvim/init.vim ~/workspace/dotfiles/vim/init.vim
	cp ~/.tmux.conf ~/workspace/dotfiles/tmux/tmux.conf
	cp ~/.zshrc ~/workspace/dotfiles/zshrc
