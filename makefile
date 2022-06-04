#plik makefile

Code2: Code2.o libfunc.so
	gcc -o Code2 Code2.o libfunc.so -Wl,-rpath=/home/student/zadanie2

Code2.o: Code2.c square.h cube.h
	gcc -c Code2.c

square.o: square.c
	gcc -fPIC -c square.c

cube.o: cube.c
	gcc -fPIC -c cube.c

libfunc.so: cube.o square.o
	gcc -shared -o libfunc.so cube.o square.o

clear:
	rm Code2 Code2.o square.o cube.o libfunc.so

