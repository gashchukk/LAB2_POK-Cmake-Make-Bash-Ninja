
# Make conditioning here
# ifeq ($(TARGET_DEVICE),device1)
#     CXX = g++   # Compiler for device1
# else
#     CXX = clang++   # Default compiler
# endif
CFILES = bzip2.c bzip2recover.c
OFILES = $(CFILES:.c=.o)
INC_DIR=$(PWD)/../library
CC = gcc

all: hellomake

hellomake: $(OFILES)
	$(CC)  $^ -o $@ -I$(INC_DIR) -L$(LIB) -lbz2

bzip2.o: bzip2.c
	$(CC)  -c $< -o $@ -I$(INC_DIR)
bzip2recover.o: bzip2recover.c
	$(CC) -c $< -o $@ -I$(INC_DIR)
.PHONY: clean
clean:
	rm -rf $(OFILES) hellomake
