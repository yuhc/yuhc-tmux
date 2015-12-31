NEWFILE  = ./yuhc-tmux.conf
DESTFILE = ~/.tmux.conf
BACKFILE = ~/.tmux.conf.bak

all: backup copy

backup:
	@cp -f ${DESTFILE} ${BACKFILE} &2>/dev/null

copy:
	@cp -f ${NEWFILE} ${DESTFILE}
	@echo Done

