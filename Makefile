initial-setup:
	cp vimrc ~/.vimrc
	cp tmux.conf ~/.tmux.conf
	cp gnome-keyring-daemon.desktop ~/.config/autostart/
	cat zshrc >> ~/.zshrc

copy:
	cp ~/.vimrc ~/playground/dotfiles/vimrc
	cp ~/.tmux.conf ~/playground/dotfiles/tmux.conf
	cp ~/.config/autostart/gnome-keyring-daemon.desktop .
