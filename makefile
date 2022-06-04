#plik makefile

CC = gcc
RM = rm -f
CFLAGS = -c
PROGS = Code2.o libfunc.so
RMPROG = Code2 Code2.o square.o cube.o libfunc.so square.h.gch cube.h.gch
PATHL = /home/student/zadanie2

Code2: $(PROGS)
	$(CC) -o $@ $^ -Wl,-rpath=$(PATHL)

Code2.o: Code2.c square.h cube.h
	$(CC) $(CFLAGS) $^

square.o: square.c
	$(CC) -fPIC $(CFLAGS) $<

cube.o: cube.c
	$(CC) -fPIC $(CFLAGS) $<

libfunc.so: cube.o square.o
	$(CC) -shared -o $@ $^

clean:
	$(RM) $(RMPROG)

