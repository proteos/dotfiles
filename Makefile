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

devbox:
	# build devbox with built-in VSCode IDE etc
	cd ~/dotfiles/devbox && docker build -t dato/devbox -f Dockerfile.devbox .

# dev:
# 	cd $$HOME/dotfiles/devbox && docker build -t dato/devbox -f Dockerfile.devbox .

devbox-start: devbox-stop
	docker run -d \
		--name=devbox \
		-p 8080:8080 \
		-e PUID="$(id -u)" \
		-e PGID="$(id -g)" \
		-v "${HOME}/.config/code-server/settings.json:/codeserver/data/User/settings.json" \
		-v "${PWD}:/workspace" \
		dato/devbox
	sleep 3
	open -a Safari http://0.0.0.0:8080

devbox-stop:
	docker stop devbox; docker rm devbox > /dev/null || true


