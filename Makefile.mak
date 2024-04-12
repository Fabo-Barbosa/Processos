all: nsFork helloWorld

nsFork: nsFork.c
    gcc -o nsFork nsFork.c

helloWorld: helloWorld.c
    gcc -o helloWorld helloWorld.c

clean:
    rm -f nsFork helloWorld
