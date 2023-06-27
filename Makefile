all: challenge

challenge: challenge.c
	gcc -o $@ $^
