CFLAGS  = -I
LFLAGS  =
CC      = gcc
RM      = /bin/rm -rf

TESTS = balancer server

all: $(TESTS)

balancer: src/balancer.c
	$(CC) -Wall src/balancer.c -o bin/balancer

server: src/server.c
	$(CC) -Wall src/server.c -o bin/server
clean:
	$(RM) *.o $(TESTS)
