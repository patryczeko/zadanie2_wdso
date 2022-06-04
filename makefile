#plik makefile

.PHONY: clean
.SUFFIXES: .o .c .h

CC = gcc
RM = rm -f
CFLAGS = -c
PROGS = Code2.o libfunc.so
RMPROG = Code2 *.o *.so
PATHL = /home/student/zadanie2

.c.o:
	$(CC) -fPIC $(CFLAGS) $<

.o:
	$(CC) $(CFLAGS) $^

Code2: $(PROGS)
	$(CC) -o $@ $^ -Wl,-rpath=$(PATHL)

Code2.o: Code2.c square.h cube.h
square.o: square.c
cube.o: cube.c

libfunc.so: cube.o square.o
	$(CC) -shared -o $@ $^

clean:
	$(RM) $(RMPROG)

