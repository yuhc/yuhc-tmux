TMUX_DIR = ~/.yuhc-tmux
MAIN_FILE = ${TMUX_DIR}/yuhc-tmux.conf
DEST_FILE = ~/.tmux.conf

install:
	mkdir -p ${TMUX_DIR}
	cp *.conf* README.md ${TMUX_DIR}
	ln -s -f ${MAIN_FILE} ${DEST_FILE}

source:
	@echo Option List
	@tmux source-file ${DESTFILE}
	@echo Done

