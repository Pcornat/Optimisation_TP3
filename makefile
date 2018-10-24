CC=gcc
CFLAGS=-pipe -ansi -Wall -Wextra -pedantic -fmessage-length=0
LDFLAGS=-pipe
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
DEP=$(wildcard *.h)
DEBUG=
EXEC=graphe

ifeq ($(DEBUG), yes)
	CFLAGS += -g3
else
	CFLAGS += -O3
endif

all: $(EXEC)

$(EXEC):	$(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

# makedepend: le package xutils-dev doit être installé
#EDIT personnel : (sous Ubuntu/Debian c'est valide)
depend:
	@makedepend -- $(CFLAGS) -- -Y $(SRCS) 2> /dev/null

.PHONY: clean mrproper
clean:
	rm -rf *.o

mrproper:	clean
	rm -f $(EXEC)

# DO NOT DELETE THIS LINE