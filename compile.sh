#!/bin/bash

# Нам потрібно обирати компілятор???
# if [ "$TARGET_DEVICE" == "device1" ]; then
#     compiler="g++"   # Compiler for device1
# else
#     compiler="clang++"   # Default compiler
# fi

# create dynamic lib

g++ mystring/library/mystring.cpp -o obj/mystring.o -c -O3
g++ mystring/examples/main.cpp -o obj/main.o -c -O3

ar rcs mystring/library/libmystring.a obj/mystring.o

g++ obj/main.o -lmystring -L./mystring/library/
./a.out
#
##g++ -std=c++11 -shared -fPIC -o mystring/library/mystring.so obj/mystring.o
if [ $? -eq 0 ]; then
    echo "Dynamic library compiled successfully."
else
    echo "Dynamic library compilation failed."
    exit 1
fi
##rm library/mystring.so
#
## create static lib
#g++ -std=c++11 -c -o library/mystring.o library/mystring.cpp
if [ $? -eq 0 ]; then
    echo "Static library compiled successfully."
else
    echo "Static library compilation failed."
    exit 1
fi
#
## ar is the archiver command. rcs are options for creating the archive, replacing existing files, and creating an index.
#ar rcs mystring/library/mystring.a mystring/library/mystring.o mystring.so
##rm library/mystring.o
##rm library/mystring.a
#
## example files (exe?)
#g++ -std=c++11 -o mystring/library/mystring library/mystring.so -Llibrary -lmystring
if [ $? -eq 0 ]; then
    echo "Examples compiled successfully."
else
    echo "Examples compilation failed."
    exit 1
fi
