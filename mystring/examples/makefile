CXX = g++
OBJ_DIR = ../obj
BIN_DIR = ../bin
LIB_DIR = ../lib

MAIN_SRC = main.cpp
MAIN_OBJ = $(OBJ_DIR)/main.o

LIB_NAME = mystring

.PHONY: all clean

all: create_dirs create_main_obj link_dynamic link_static

create_dirs:
	mkdir -p $(BIN_DIR)

create_main_obj:
	$(CXX) -std=c++17 -fPIC -c $(MAIN_SRC) -o $(MAIN_OBJ)

link_dynamic: create_main_obj
	$(CXX) -std=c++17 -L$(LIB_DIR) -Wl,-rpath,$(LIB_DIR) -l$(LIB_NAME) $(MAIN_OBJ) -o $(BIN_DIR)/myprogram_dynamic

link_static: create_main_obj
	$(CXX) -std=c++17 $(LIB_DIR)/lib$(LIB_NAME).a $(MAIN_OBJ) -o $(BIN_DIR)/myprogram_static

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR) $(LIB_DIR)
