cmake_minimum_required(VERSION 3.17)
project(zip2_project)

set(CMAKE_CXX_STANDARD 17)

SET(bzip_SOURCES
    randtable.c
    compress.c
    decompress.c
    blocksort.c
    huffman.c
    crctable.c
    bzlib.c
)

# For visual studio compiler
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()

ADD_LIBRARY(bzip_dynamic SHARED ${bzip_SOURCES})
ADD_LIBRARY(bzip_static STATIC ${bzip_SOURCES})

