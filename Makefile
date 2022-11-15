ALL_CONFIGS=~/.bashrc ~/.vimrc ~/.tmux.conf ~/.profile
GROUPS=bin_m
BIN_CONTENTS=$(wildcard bin/*)

all: $(ALL_CONFIGS) $(GROUPS)

bin_m: $(BIN_CONTENTS)
	cp $^ ~/bin/

~/.bashrc: configs/.bashrc
	ln $< $@

~/.vimrc: configs/.vimrc
	configs/prep_theme.sh
	ln $< $@

~/.tmux.conf: configs/.tmux.conf
	ln $< $@

~/.profile: configs/.profile
	ln $< $@

clean:
	rm -f $(ALL_CONFIGS)
	mkdir -p ~/bin
    
