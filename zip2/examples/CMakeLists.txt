# SET(zip2_FILE bzip2.c bzip2recover.c)
# ADD_EXECUTABLE(zip2 ${zip2_FILE})

SET(zip2_FILE bzip2.c)  # Remove bzip2recover.c from the list
ADD_EXECUTABLE(zip2 ${zip2_FILE})

# Find the BZIP2 package
find_package(BZip2 REQUIRED)

# Link the zip2 target with the BZIP2 library
target_link_libraries(zip2 PRIVATE BZip2::BZip2)
