#plik makefile

.PHONY: clean
.SUFFIXES: .o .c .h

CC = gcc
RM = rm -f
CFLAGS = -c
PROGS = Code2.o libfunc.so
RMPROG = Code2 *.o *.so
PATHL = ../zadanie2

%.o: %.c
	$(CC) -fPIC $(CFLAGS) $<

%.o: 
	$(CC) $(CFLAGS) $^

%: %.o
	$(CC) -o $@ $^ -Wl,-rpath=$(PATHL)

lib%.so:
	$(CC) -shared -o $@ $^

Code2: $(PROGS)
Code2.o: Code2.c square.h cube.h
square.o: square.c
cube.o: cube.c
libfunc.so: cube.o square.o

clean:
	$(RM) $(RMPROG)

