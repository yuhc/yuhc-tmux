NEWFILE  = ./yuhc-tmux.conf
DESTFILE = ~/.tmux.conf
BACKFILE = ~/.tmux.conf.bak

all: backup copy source

backup:
	@cp -f ${DESTFILE} ${BACKFILE} &2>/dev/null

copy:
	@cp -f ${NEWFILE} ${DESTFILE}

source:
	@echo Option List
	@tmux source-file ${DESTFILE}
	@echo Done

