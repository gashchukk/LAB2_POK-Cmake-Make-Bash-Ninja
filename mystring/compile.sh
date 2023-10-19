#!/bin/bash

which_lib="$1"
to_save="$2"

if [ "$which_lib" == "-dynamic" ]; then
    # Create an obj directories if they don't exist
    mkdir -p dynamic
    mkdir -p dynamic/obj
    mkdir -p dynamic/so

    # Compile source files into object files with shared library flags
    g++ -std=c++17 -fPIC -shared library/mystring.cpp -o dynamic/obj/mystring.o -c -O3
    g++ -std=c++17 -fPIC -shared examples/main.cpp -o dynamic/obj/main.o -c -O3

    # Link object files to create the shared library
    g++ -shared -o dynamic/so/libmystring.so dynamic/obj/mystring.o
    g++ -o main.out dynamic/obj/main.o -lmystring -L dynamic/so

    if [ "$to_save" == "-del" ]; then
        rm -rf dynamic
    fi
elif [ "$which_lib" == "-static" ]; then
    # Create an obj directory if it doesn't exist
    mkdir -p static
    mkdir -p static/obj

    # Compile source files into object files
    g++ -std=c++17 library/mystring.cpp -o static/obj/mystring.o -c -O3
    g++ -std=c++17 examples/main.cpp -o static/obj/main.o -c -O3

    # Create the static library (archive)
    ar rcs static/obj/libmystring.a static/obj/mystring.o

    # Link the program with the static library
    g++ -o a.out static/obj/main.o -Lobj -lmystring -L static/obj

    if [ "$to_save" == "-del" ]; then
        rm -rf static
    fi
fi
