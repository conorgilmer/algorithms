CC=gcc
CFLAGS=-I.
DEPS = stable.h
OBJ = stable.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

stable: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)


