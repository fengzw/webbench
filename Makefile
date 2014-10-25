CFLAGS	=	-Wall -ggdb -W -O
CC	=	gcc
LIBS	=	
LDFLAGS	=	
PREFIX	=	/usr/local
VERSION	=	1.5
TMPDIR	=	/tmp/webbench-$(VERSION)

all:	webbench tags


tags: *.c
	-ctags *.c

webbench: webbench.o Makefile
	$(CC) $(CFLAGS) $(LDFLAGS) -o webbench webbench.o $(LIBS)

clean:
	-rm -f *.o webbench *~ core *.core tags
