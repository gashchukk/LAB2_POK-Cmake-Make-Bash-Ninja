#!/bin/bash

#### Dynamic ####
# Create an obj directories if they don't exist
mkdir -p obj
mkdir -p bin
mkdir -p lib

# Compile source files into object files
g++ -std=c++17 -fPIC -c library/mystring.cpp -o obj/mystring.o
g++ -std=c++17 -fPIC -c examples/main.cpp -o obj/main.o -Ilibrary

# Create dynamic lib
g++ -shared obj/mystring.o obj/main.o -o lib/libmystring.so

# Link obj to bin
g++ -std=c++17 -L./lib -lmystring obj/main.o -o bin/myprogram_dynamic -Wl,-rpath,lib -Ilibrary


#### Static ####
# Create the static library (archive)
ar rcs lib/libmystring.a obj/mystring.o obj/main.o

# Create the Executable Linked with the Static Library
# g++ -std=c++17 -lmystring obj/main.o -o bin/myprogram_static -Llib
g++ -std=c++17 obj/main.o -o bin/myprogram_static lib/libmystring.a
