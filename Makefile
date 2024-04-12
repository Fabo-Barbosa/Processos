CC=clang
CFLAGS=-Wall -Wextra -Wpedantic

all: main hello_world

main: main.c
	$(CC) $(CFLAGS) -o main main.c

hello_world: hello_world.c
	$(CC) $(CFLAGS) -o hello_world hello_world.c

clean:
	rm -f main hello_world

