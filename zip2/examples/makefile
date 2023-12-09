#### Dynamic ####
CXX_flags ?= -O3
SRC_DIR = ../library
EXAMPLES_DIR = ./
OBJ_DIR = ../obj
LIB_DIR = ../lib
BIN_DIR = ../bin

# Compile flags
CFLAGS = -std=c17 -fPIC
LDFLAGS = -shared

MAIN_SRC1 = bzip2.c
MAIN_SRC2 = bzip2recover.c

all: create_dirs create_main_obj link_dynamic link_static

create_dirs:
	mkdir -p $(BIN_DIR)

# -I$(SRC_DIR) - tells where the compiler should look for header files
create_main_obj:
	gcc $(CFLAGS) -c -o $(OBJ_DIR)/bzip2_obj.o -I$(SRC_DIR) bzip2.c $(CXX_flags)
	gcc $(CFLAGS) -c -o $(OBJ_DIR)/bzip2recover_obj.o -I$(SRC_DIR) bzip2recover.c $(CXX_flags)

link_dynamic: create_main_obj
	g++ -o $(BIN_DIR)/bzip2_obj_dynamic $(OBJ_DIR)/bzip2_obj.o -L $(LIB_DIR) -lmylibrary -Wl,-rpath,$(LIB_DIR)
	g++ -o $(BIN_DIR)/bzip2recover_obj_dynamic $(OBJ_DIR)/bzip2recover_obj.o -L $(LIB_DIR) -lmylibrary -Wl,-rpath,$(LIB_DIR)

link_static: create_main_obj
	g++ -o $(BIN_DIR)/bzip2recover_obj_static $(OBJ_DIR)/bzip2recover_obj.o -L $(LIB_DIR) -lmylibrary_s
	g++ -o $(BIN_DIR)/bzip2_obj_static $(OBJ_DIR)/bzip2_obj.o -L $(LIB_DIR) -lmylibrary_s

.PHONY: clean

clean:
	rm -rf $(BIN_DIR)
