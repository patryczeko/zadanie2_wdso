#plik makefile

.PHONY: clean
.SUFFIXES: .o .c .h

CC = gcc
RM = rm -f
CFLAGS = -c
LIBR = libfunc.so
LIBDIR = lib
PROGS = Code2.o
RMPROG = ~/zadanie2/bin/Code2 *.o ~/zadanie2/lib/*.so ~/zadanie2/include/*.gch
PATHL = ../zadanie2/lib
vpath %.c src
vpath %.h include

Code2: $(PROGS) $(addprefix $(LIBDIR)/, $(LIBR))


%.o: %.c
	$(CC) -fPIC $(CFLAGS) $^ -I./include

%.o: 
	$(CC) $(CFLAGS) $^


%: %.o
	$(CC) -o ~/zadanie2/bin/$@ $^ -I./include -Wl,-rpath=$(PATHL)

lib%.so:
	$(CC) -shared -o ~/zadanie2/$@ $^


square.o: square.c
cube.o: cube.c
Code2.o: Code2.c square.h cube.h
$(LIBDIR)/libfunc.so: cube.o square.o

clean:
	$(RM) $(RMPROG)

