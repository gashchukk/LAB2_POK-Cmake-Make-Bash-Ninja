#!/bin/bash

#### Dynamic ####
mkdir -p obj
mkdir -p lib
mkdir -p bin

# Compile source files into object files with shared library flags
for source_file in library/*.c; do
    gcc -std=c17 -fPIC -c -o obj/$(basename "$source_file" .c).o "$source_file"
done

gcc -std=c17 -fPIC -c -o obj/bzip2_obj.o -Ilibrary examples/bzip2.c
gcc -std=c17 -fPIC -c -o obj/bzip2recover_obj.o -Ilibrary examples/bzip2recover.c

# Link object files to create the shared library
g++ -shared -o lib/libmylibrary.so obj/blocksort.o obj/compress.o obj/decompress.o obj/randtable.o obj/bzlib.o obj/crctable.o obj/huffman.o

# # Link the programs with the shared library
g++ -o bin/bzip2recover_obj_dynamic obj/bzip2recover_obj.o -L lib -lmylibrary -Wl,-rpath,lib
g++ -o bin/bzip2_obj_dynamic obj/bzip2_obj.o -L lib -lmylibrary -Wl,-rpath,lib


#### Static ####
mkdir -p obj

gcc -std=c17 -c -o obj/bzip2_obj.o -Ilibrary examples/bzip2.c
gcc -std=c17 -c -o obj/bzip2recover_obj.o -Ilibrary examples/bzip2recover.c

# Create the static library (archive)
ar rcs lib/libmylibrary_s.a obj/blocksort.o obj/compress.o obj/decompress.o obj/randtable.o obj/bzlib.o obj/crctable.o obj/huffman.o

# Link the programs with the static library
g++ -o bin/bzip2recover_obj_static obj/bzip2recover_obj.o -L lib -lmylibrary_s
g++ -o bin/bzip2_obj_static obj/bzip2_obj.o -L lib -lmylibrary_s
