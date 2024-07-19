CC = gcc
CFLAGS = -Wall
SRC_DIR = src
BIN_DIR = bin

all: server client

server: $(SRC_DIR)/server.c
	$(CC) $(CFLAGS) -o $(BIN_DIR)/server $(SRC_DIR)/server.c

client: $(SRC_DIR)/client.c
	$(CC) $(CFLAGS) -o $(BIN_DIR)/client $(SRC_DIR)/client.c

clean:
	rm -f $(BIN_DIR)/server $(BIN_DIR)/client
