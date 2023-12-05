CXX = g++
SRC_DIR = library
OBJ_DIR = ../obj
LIB_DIR = ../lib

LIB_NAME = libmystring
DYNAMIC_LIB = $(LIB_DIR)/$(LIB_NAME).so
STATIC_LIB = $(LIB_DIR)/$(LIB_NAME).a

.PHONY: all clean

all: create_dirs create_dynamic_lib create_static_lib

create_dirs:
	mkdir -p $(OBJ_DIR)
	mkdir -p $(LIB_DIR)

create_dynamic_lib: mystring.cpp
	$(CXX) -std=c++17 -fPIC -c $< -o $(OBJ_DIR)/mystring.o
	$(CXX) -shared $(OBJ_DIR)/mystring.o -o $(DYNAMIC_LIB)

create_static_lib: mystring.cpp
	$(CXX) -std=c++17 -c $< -o $(OBJ_DIR)/mystring.o
	ar rcs $(STATIC_LIB) $(OBJ_DIR)/mystring.o

clean:
	rm -rf $(OBJ_DIR) $(LIB_DIR)