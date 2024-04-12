CC=clang
CFLAGS=-Wall -Wextra -Wpedantic

all: nsFork helloWorld

nsFork: nsFork.c
	$(CC) $(CFLAGS) -o nsFork nsFork.c

helloWorld: helloWorld.c
	$(CC) $(CFLAGS) -o helloWorld helloWorld.c

clean:
	rm -f nsFork helloWorld

