#!/bin/bash

COPY = cp
MOVE = mv
SRC = source
SED = sed -i -e

conf_bash:	bash/bashrc bash/bash_profile
		echo "Backing up original files..."
		if [ -e ~/.bashrc ]; then $(MOVE) ~/.bashrc ~/.bashrc.original ; fi
		if [ -e ~/.bash_profile ]; then $(MOVE) ~/.bash_profile ~/.bash_provile.original; fi
		echo "Copying new files"
		$(COPY) bash/bashrc ~/.bashrc
		$(COPY) bash/bash_profile ~/.bash_profile
		$(SRC) ~/.bashrc

conf_vim: 	vim/vim vim/vimrc
		echo "Backing up original files..."
		if [ -e ~/.vim ]; then mv ~/.vim ~/.vim.original; fi
		if [ -e ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.original; fi
		echo "Copying new files"
		cp -r vim/vim ~/.vim
		cp vim/vimrc ~/.vimrc

#conf_git: 	gitconfig
#		@if [ -z $(EMAIL) ]; then echo Please, specify your email. Eg. make conf_git EMAIL=me@someserver.com; exit 0; fi
#		@if [ -z $(NAME) ]; then echo Please, specify your name. Eg. make conf_git NAME=Leonardo Mateo; exit 0; fi
#		@echo "Backing up original files..."
#		@if [ -e ~/.gitconfig ]; then $(MOVE) ~/.gitconfig ~/.gitconfig.original; fi
#		@echo "Copying new files"
#		@cp -r vim/vim ~/.vim
#		@$(COPY) gitconfig ~/.gitconfig
#		@if [ ! -z $(NAME) ]; then $(SED) 's/<name>/$(NAME)/g' ~/.gitconfig; fi
#		@if [ ! -z $(EMAIL)]; then $(SED) 's/<email>/$(EMAIL)/g' ~/.gitconfig; fi

