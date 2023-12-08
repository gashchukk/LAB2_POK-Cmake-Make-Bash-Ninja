CXX = g++
OBJ_DIR = ../obj
BIN_DIR = ../bin
LIB_DIR = ../lib
SRC_DIR = ../library

MAIN_SRC = main.cpp
MAIN_OBJ = $(OBJ_DIR)/main.o

LIB_NAME = mystring

.PHONY: all clean

all: create_dirs create_main_obj link_dynamic link_static

create_dirs:
	mkdir -p $(BIN_DIR)

# -I$(SRC_DIR) - tells where the compiler should look for header files
create_main_obj: $(MAIN_SRC)
	$(CXX) -std=c++17 -fPIC -c $(MAIN_SRC) -o $(MAIN_OBJ) -I$(SRC_DIR)

link_dynamic: create_main_obj
	$(CXX) -std=c++17 -Wl,-rpath,$(LIB_DIR) $(MAIN_OBJ) -o $(BIN_DIR)/myprogram_dynamic -I$(SRC_DIR) -L$(LIB_DIR) -l$(LIB_NAME)

link_static: create_main_obj
	$(CXX) -std=c++17 $(MAIN_OBJ) -o $(BIN_DIR)/myprogram_static $(LIB_DIR)/lib$(LIB_NAME).a

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR) $(LIB_DIR)
