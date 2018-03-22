all: httpd client
# all: master slave
LIBS = -lpthread #-lsocket
httpd: httpd.c
	gcc -g -W -Wall $(LIBS) -o $@ $<

client: simpleclient.c
	gcc -W -Wall -o $@ $<

master: server.c
	gcc -o master server.c
	
slave: client.c
	gcc -o slave client.c
clean:
	rm httpd
