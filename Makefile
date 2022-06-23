ALL_CONFIGS=~/.bashrc ~/.vimrc ~/.tmux.conf ~/.profile
DIRS=~/bin

all: $(ALL_CONFIGS) $(DIRS)

~/.bashrc: configs/.bashrc
	ln $< $@

~/.vimrc: configs/.vimrc
	ln $< $@

~/.tmux.conf: configs/.tmux.conf
	ln $< $@

~/.profile: configs/.profile
	ln $< $@

~/bin: $(realpath bin)
	ln -s $< $@

clean:
	rm -f $(ALL_CONFIGS)
	rm -rf $(DIRS)
    
