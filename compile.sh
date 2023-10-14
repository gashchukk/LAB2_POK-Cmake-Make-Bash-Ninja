#!/bin/bash

# Нам потрібно обирати компілятор???
# if [ "$TARGET_DEVICE" == "device1" ]; then
#     compiler="g++"   # Compiler for device1
# else
#     compiler="clang++"   # Default compiler
# fi

# create dynamic lib
g++ -std=c++11 -shared -fPIC -o library/mystring.dylib library/mystring.cpp
if [ $? -eq 0 ]; then
    echo "Dynamic library compiled successfully."
else
    echo "Dynamic library compilation failed."
    exit 1
fi
#rm library/mystring.dylib

# create static lib
g++ -std=c++11 -c -o library/mystring.o library/mystring.cpp
if [ $? -eq 0 ]; then
    echo "Static library compiled successfully."
else
    echo "Static library compilation failed."
    exit 1
fi

# ar is the archiver command. rcs are options for creating the archive, replacing existing files, and creating an index.
ar rcs library/mystring.a library/mystring.o mystring.dylib
rm library/mystring.o
rm library/mystring.a

# example files (exe?)
g++ -std=c++11 -o library/mystring library/mystring.dylib -Llibrary -lmystring
if [ $? -eq 0 ]; then
    echo "Examples compiled successfully."
else
    echo "Examples compilation failed."
    exit 1
fi

# код працює лише під мак. виникиє помилка:
#ld: library not found for -lmystring
#clang: error: linker command failed with exit code 1 (use -v to see invocation)
#Examples compilation failed.