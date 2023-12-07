SRC_DIR = ./
EXAMPLES_DIR = examples
OBJ_DIR = ../obj
LIB_DIR = ../lib
BIN_DIR = ../bin

# Compile flags
CFLAGS = -std=c17 -fPIC
LDFLAGS = -shared

MAIN_SRC1 = bzip2.c
MAIN_SRC2 = bzip2recover.c

all: create_dirs create_objects dynamic_library static_library

create_dirs:
	mkdir -p $(OBJ_DIR)
	mkdir -p $(LIB_DIR)

create_objects: create_dirs
	for source_file in $(SRC_DIR)/*.c; do \
		gcc $(CFLAGS) -c -o $(OBJ_DIR)/$$(basename "$$source_file" .c).o "$$source_file"; \
	done

dynamic_library: create_objects
	g++ $(LDFLAGS) -o $(LIB_DIR)/libmylibrary.so $(OBJ_DIR)/*.o

static_library: create_objects
	ar rcs $(LIB_DIR)/libmylibrary_s.a $(OBJ_DIR)/*.o

.PHONY: clean

clean:
	rm -rf $(OBJ_DIR) $(LIB_DIR) $(BIN_DIR)
