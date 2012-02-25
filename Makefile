# Delete or move current ~/.vim и ~/.vimrc
# cd ~; git clone git://github.com/miripiruni/vimi.git .vimi && ln -s .vimi/.vimrc .vimrc && ln -s .vimi/.vim .vim
# git clone git://github.com/gmarik/vundle.git ~/.vimi/.vim/bundle/vundle
# Start Vim and type :BundleInstall
# Restart vim

VIMI_DIR = ~/.vimi
VIMRC = .vimrc
VUNDLE_DIR = bundle/vundle

vimi:
	mv ~/.vim ~/.vim-backup
	mv ~/$(VIMRC) ~/$(VIMRC)-backup
	cd ~
	ln -s $(VIMI_DIR)/$(VIMRC) $(VIMRC) && ln -s $(VIMI_DIR)/.vim .vim
	git clone git://github.com/gmarik/vundle.git $(VIMI_DIR)/.vim/$(VUNDLE_DIR)
	vim +BundleInstall +quitall

