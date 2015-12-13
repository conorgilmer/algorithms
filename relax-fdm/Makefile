CC=gcc
CFLAGS=-I.
DEPS = relax.h
OBJ = relax.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

relax: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)


