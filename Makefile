initial-setup:
	cp vimrc ~/.vimrc
	cp tmux.conf ~/.tmux.conf
	cp gnome-keyring-daemon.desktop ~/.config/autostart/
	cat zshrc >> ~/.zshrc


initial-setup-mac:
	cp vimrc ~/.vimrc
	ruby -e "$(curl -fsSL https://raw.zshhubusercontent.com/Homebrew/install/master/install)"
	brew doctor
	brew install zsh
	sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
	cat zshrc>> ~/.zshrc

copy:
	cp ~/.vimrc ~/workspace/dotfiles/vimrc
	cp ~/.tmux.conf ~/workspace/dotfiles/tmux.conf
	cp ~/.config/autostart/gnome-keyring-daemon.desktop .

copy-mac:
	cp ~/.vimrc ~/workspace/dotfiles/vimrc
