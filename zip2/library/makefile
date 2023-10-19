# Makefile for building a C library

CC = gcc
# Directories
SRC_DIR = library


# Library name
LIB_NAME = library

# Source and object files
SRC_FILES = ./blocksort.c ./bzlib.c ./compress.c ./crctable.c ./decompress.c ./huffman.c ./randtable.c
OBJ_FILES = ./blocksort.o ./bzlib.o ./compress.o ./crctable.o ./decompress.o ./huffman.o ./randtable.o

# Library target
LIB_TARGET = ./lib$(LIB_NAME).a

all: $(LIB_TARGET)

$(LIB_TARGET): $(OBJ_FILES)
	ar rcs $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)/*.o $(LIB_TARGET)

.PHONY: all clean
