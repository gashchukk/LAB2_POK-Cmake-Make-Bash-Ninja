# Create the executable for bzip2.c
SET(zip2_FILE1 bzip2.c)
ADD_EXECUTABLE(zip2_bzip2 ${zip2_FILE1})

# Create the executable for bzip2recover.c
SET(zip2_FILE2 bzip2recover.c)
ADD_EXECUTABLE(zip2_bzip2recover ${zip2_FILE2})

# For visual studio compiler
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()

# Link the zip2_bzip2 target with the BZIP2 library
target_link_libraries(zip2_bzip2 PRIVATE bzip_static)

# Link the zip2_bzip2recover target with the BZIP2 library
target_link_libraries(zip2_bzip2recover PRIVATE bzip_shared)
