# my dev box my setup

zsh:
	# install zsh
	brew install zsh
	chsh -s /bin/zsh    # change default shell
	# install oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	ln -s ~/dotfiles/zsh/dato-af-magic.zsh-theme ~/.oh-my-zsh/themes/
	mv ~/.zshrc ~/.zshrc.pre-setup
	ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

bash:
	# setup terminal profile
	ln -s ~/dotfiles/bash_profile.home ~/.bash_profile

vim:
	# vim setup
	ln -s ~/dotfiles/vim/vimrc ~/.vimrc

emaces:
	# emacs
	ln -s ~/dotfiles/emacs/emacs ~/.emacs
	ln -s ~/dotfiles/emacs/emacs.d ~/.emacs.d

git:
	# my git setup
	ln -s ~/dotfiles/git/gitignore_global ~/.gitignore_global

vscode:
	# build devbox with built-in vscode etc
	cd ~/dotfiles/devbox && docker build -t dato/devbox -f Dockerfile.devbox .
