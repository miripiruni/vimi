VIMI_DIR = ~/.vimi
VIMRC = .vimrc
VUNDLE_DIR = bundle/vundle
BACKUP_PREFIX = .vimi.bak
DOT_VIM = .vim

vimi: echostart bundle-install
	@echo "\nVimi successfully installed.\nRun Vim and write something awesome."

echostart:
	@echo "Start installing Vimi...\n"

bundle-install: symlinks vundle
	-vim +BundleInstall +quitall

symlinks: backup
	@ln -s $(VIMI_DIR)/$(VIMRC) ~/$(VIMRC) && \
	ln -s $(VIMI_DIR)/$(DOT_VIM) ~/$(DOT_VIM) && \
	echo "Create symlinks:\n~/$(VIMRC) -> $(VIMI_DIR)/$(VIMRC)\n~/$(DOT_VIM) -> $(VIMI_DIR)/$(DOT_VIM)\n"

backup: remove-prev-backup
	@test ! -e ~/$(DOT_VIM) || \
	(\
		mv ~/$(DOT_VIM) ~/$(DOT_VIM)$(BACKUP_PREFIX); \
		echo "Vimi makes backup of your current ~/$(DOT_VIM) directory to ~/$(DOT_VIM)$(BACKUP_PREFIX)\n" \
	)

	@test ! -e ~/.vimrc || \
	( \
		mv ~/$(VIMRC) ~/$(VIMRC)$(BACKUP_PREFIX); \
		echo "Vimi makes backup of your current ~/$(VIMRC) to ~/$(VIMRC)$(BACKUP_PREFIX)\n" \
	)

remove-prev-backup:
	@test ! -e ~/$(DOT_VIM)$(BACKUP_PREFIX) || \
	rm -fr ~/$(DOT_VIM)$(BACKUP_PREFIX)

	@test ! -e ~/$(VIMRC)$(BACKUP_PREFIX) || \
	rm -f ~/$(VIMRC)$(BACKUP_PREFIX)

vundle:
	@test ! -e $(VIMI_DIR)/$(DOT_VIM)/$(VUNDLE_DIR) || \
	rm -rf $(VIMI_DIR)/$(DOT_VIM)/$(VUNDLE_DIR)

	@echo "Clone Vundle from github.com..."
	@git clone git://github.com/gmarik/vundle.git $(VIMI_DIR)/$(DOT_VIM)/$(VUNDLE_DIR) > /dev/null
	@echo "Done.\n"
