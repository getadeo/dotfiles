initial-setup:
	cp vimrc ~/.vimrc
	cp tmux.conf ~/.tmux.conf
	cp gnome-keyring-daemon.desktop ~/.config/autostart/
	cat zshrc >> ~/.zshrc


initial-setup-mac:
	cp vimrc ~/.vimrc
	cp zsh_plugins.txt ~/.zsh_plugins.txt
	brew install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	brew doctor
	cat zshrc>> ~/.zshrc
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	antibody bundle < ~/.zsh_plugins.txt

copy:
	cp ~/.vimrc ~/workspace/dotfiles/vimrc
	cp ~/.tmux.conf ~/workspace/dotfiles/tmux.conf
	cp ~/.config/autostart/gnome-keyring-daemon.desktop .

copy-mac:
	cp ~/.vimrc ~/workspace/dotfiles/vimrc
