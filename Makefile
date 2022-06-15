ALL_CONFIGS=~/.bashrc ~/.vimrc ~/.tmux.conf
DIRS=~/bin

all: $(ALL_CONFIGS) $(DIRS)

~/.bashrc: configs/.bashrc
	ln $< $@

~/.vimrc: configs/.vimrc
	ln $< $@

~/.tmux.conf: configs/.tmux.conf
	ln $< $@

~/bin: $(realpath bin)
	ln -s $< $@

clean:
	rm -f $(ALL_CONFIGS)
	rm -r $(DIRS)
    
