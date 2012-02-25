# Delete or move current ~/.vim и ~/.vimrc
# cd ~; git clone git://github.com/miripiruni/vimi.git .vimi && ln -s .vimi/.vimrc .vimrc && ln -s .vimi/.vim .vim
# git clone git://github.com/gmarik/vundle.git ~/.vimi/.vim/bundle/vundle
# Start Vim and type :BundleInstall
# Restart vim

VIMI_DIR = ~/.vimi
VIMRC = .vimrc
VUNDLE_DIR = bundle/vundle

vimi: echostart backup symlinks vundle bundle-install
	@echo "\nVimi successfully installed.\nRun Vim and write something awesome."

echostart:
	@echo "Start installing Vimi...\n"

vundle:
	@test ! -e $(VIMI_DIR)/.vim/$(VUNDLE_DIR) || rm -rf $(VIMI_DIR)/.vim/$(VUNDLE_DIR)
	@echo "Clone Vundle from github.com..."
	@git clone git://github.com/gmarik/vundle.git $(VIMI_DIR)/.vim/$(VUNDLE_DIR) > /dev/null
	@echo "Done.\n"

backup:
	@cd ~
	@test ! -e ~/.vim-make-backup || rm -fr ~/.vim-make-backup
	@test ! -e ~/.vim || (mv ~/.vim ~/.vim-make-backup; echo "Vimi makes backup of your current ~/.vim directory to ~/.vim-make-backup\n")
	@test ! -e ~/$(VIMRC)-make-backup || rm -f ~/$(VIMRC)-make-backup
	@test ! -e ~/.vimrc || (mv ~/$(VIMRC) ~/$(VIMRC)-make-backup; echo "Vimi makes backup of your current ~/.vimrc to ~/.vimrc-make-backup\n")

symlinks: backup
	@ln -s $(VIMI_DIR)/$(VIMRC) ~/$(VIMRC) && ln -s $(VIMI_DIR)/.vim ~/.vim && echo "Create symlinks:\n~/$(VIMRC) -> $(VIMI_DIR)/$(VIMRC)\n~/.vim -> $(VIMI_DIR)/.vim\n"

bundle-install: symlinks vundle
	-vim +BundleInstall +quitall
