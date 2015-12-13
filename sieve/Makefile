CC=gcc
CFLAGS=-I.
DEPS = sieve.h
OBJ = sieve.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

sieve: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)


