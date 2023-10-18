# SET(mystring_FILES
# randtable.c
# compress.c
# decompress.c
# bzlib_private.h
# bzlib.h
# blocksort.c
# huffman.c
# crctable.c
# bzlib.c)


# ADD_LIBRARY(mystring ${mystring_FILES})
# # TARGET_INCLUDE_DIRECTORIES(mystring ${CMAKE_CURRENT_SOURCE_DIR})

# SET(zip2_FILE bzip2.c bzip2recover.c)
# ADD_EXECUTABLE(zip2_lib ${zip2_FILE})

# # Find the BZIP2 package
# find_package(BZip2 REQUIRED)

# # Link the zip2 target with the BZIP2 library
# target_link_libraries(zip2_lib PRIVATE BZip2::BZip2)


SET(mystring_SOURCES
    randtable.c
    compress.c
    decompress.c
    blocksort.c
    huffman.c
    crctable.c
    bzlib.c
)

# Create the dynamic/shared library
ADD_LIBRARY(mystring_shared SHARED ${mystring_SOURCES})

# Create the static library
ADD_LIBRARY(mystring_static STATIC ${mystring_SOURCES})

# Optionally set some properties for the libraries if needed
SET_TARGET_PROPERTIES(mystring_shared PROPERTIES OUTPUT_NAME mystring)
SET_TARGET_PROPERTIES(mystring_static PROPERTIES OUTPUT_NAME mystring)
