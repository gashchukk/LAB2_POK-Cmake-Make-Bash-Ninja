cmake_minimum_required(VERSION 3.17)
project(zip2_project)

set(CMAKE_CXX_STANDARD 17)

set(zip2_FILE1 bzip2.c)
set(zip2_FILE2 bzip2recover.c)

# For visual studio compiler
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()

# zip2_FILE1
add_executable(zip2_bzip2_static ${zip2_FILE1})
target_link_libraries(zip2_bzip2_static bzip_static)

add_executable(zip2_bzip2_dynamic ${zip2_FILE1})
target_link_libraries(zip2_bzip2_dynamic bzip_dynamic)

# zip2_FILE2
add_executable(zip2_bzip2recover_static ${zip2_FILE2})
target_link_libraries(zip2_bzip2recover_static bzip_static)

add_executable(zip2_bzip2recover_dynamic ${zip2_FILE2})
target_link_libraries(zip2_bzip2recover_dynamic bzip_dynamic)
