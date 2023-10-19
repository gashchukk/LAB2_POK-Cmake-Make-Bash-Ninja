#!/bin/bash

which_lib="$1"
to_save="$2"

if [ "$which_lib" == "-dynamic" ]; then
    # Create directories if they don't exist
    mkdir -p dynamic/obj
    mkdir -p dynamic/so

    # Compile source files into object files with shared library flags
    for source_file in library/*.c; do
        gcc -std=c17 -fPIC -c -O3 -o dynamic/obj/$(basename "$source_file" .c).o "$source_file"
    done

    gcc -std=c17 -fPIC -c -O3 -o dynamic/obj/bzip2_obj.o -Ilibrary examples/bzip2.c
    gcc -std=c17 -fPIC -c -O3 -o dynamic/obj/bzip2recover_obj.o -Ilibrary examples/bzip2recover.c

    # Link object files to create the shared library
    g++ -shared -o dynamic/so/libmylibrary.so dynamic/obj/blocksort.o dynamic/obj/compress.o dynamic/obj/decompress.o dynamic/obj/randtable.o dynamic/obj/bzlib.o dynamic/obj/crctable.o dynamic/obj/huffman.o

    g++ -o bzip2recover_obj.out dynamic/obj/bzip2recover_obj.o -L dynamic/so -lmylibrary
    g++ -o bzip2_obj.out dynamic/obj/bzip2_obj.o -L dynamic/so -lmylibrary


    if [ "$to_save" == "-del" ]; then
        rm -rf dynamic
    fi
elif [ "$which_lib" == "-static" ]; then
    # Create an obj directory if it doesn't exist
    mkdir -p static/obj

    # Compile source files into object files
    for source_file in library/*.c; do
        gcc -std=c17 -c -O3 -o static/obj/$(basename "$source_file" .c).o "$source_file"
    done

    gcc -std=c17 -c -O3 -o static/obj/bzip2_obj.o -Ilibrary examples/bzip2.c
    gcc -std=c17 -c -O3 -o static/obj/bzip2recover_obj.o -Ilibrary examples/bzip2recover.c

    # Create the static library (archive)
    ar rcs static/obj/libmylibrary.a static/obj/blocksort.o static/obj/compress.o static/obj/decompress.o static/obj/randtable.o static/obj/bzlib.o static/obj/crctable.o static/obj/huffman.o
    ar rcs static/obj/bzip2_obj.a static/obj/bzip2_obj.o
    ar rcs static/obj/bzip2recover_obj.a static/obj/bzip2recover_obj.o

    # Link the programs with the static library
    g++ -o bzip2recover_obj.out static/obj/bzip2recover_obj.o -L static/obj -lmylibrary
    g++ -o bzip2_obj.out static/obj/bzip2_obj.o -L static/obj -lmylibrary

    if [ "$to_save" == "-del" ]; then
        rm -rf static
    fi
fi
