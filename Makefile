CC = gcc
CFLAGS = -O2 -g -Wall -I include
OBJS = \
		main.o \
		list.o \
		server.o \
		utility.o \
		request.o \
		response.o \
		kv.o \
		handler.o \

EXEC = webserver

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

all: $(EXEC)
run: $(EXEC)
	sudo ./$(EXEC) 80

clean:
	rm $(EXEC) $(OBJS)