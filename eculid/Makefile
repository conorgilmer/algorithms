CC=gcc
CFLAGS=-I.
DEPS = euclid.h
OBJ = euclid.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

euclid: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)


