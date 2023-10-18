SET(mystring_SOURCES
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

# Create the dynamic/shared library
ADD_LIBRARY(mystring_shared SHARED ${mystring_SOURCES})

# Create the static library
ADD_LIBRARY(mystring_static STATIC ${mystring_SOURCES})

# Optionally set some properties for the libraries if needed
SET_TARGET_PROPERTIES(mystring_shared PROPERTIES OUTPUT_NAME mystring)
SET_TARGET_PROPERTIES(mystring_static PROPERTIES OUTPUT_NAME mystring)
