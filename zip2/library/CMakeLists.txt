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

# Create the dynamic/shared library
ADD_LIBRARY(bzip_shared SHARED ${bzip_SOURCES})

# Create the static library
ADD_LIBRARY(bzip_static STATIC ${bzip_SOURCES})

# Optionally set some properties for the libraries if needed
SET_TARGET_PROPERTIES(bzip_shared PROPERTIES OUTPUT_NAME bzip)
SET_TARGET_PROPERTIES(bzip_static PROPERTIES OUTPUT_NAME bzip)
