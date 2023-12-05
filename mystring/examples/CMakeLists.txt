cmake_minimum_required(VERSION 3.17)
project(mystring_project)

set(CMAKE_CXX_STANDARD 17)

set(MAIN_SRC main.cpp)
set(LIB_NAME mystring)

# For visual studio compiler
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()

add_executable(myprogram_dynamic ${MAIN_SRC})
target_link_libraries(myprogram_dynamic ${LIB_NAME}_dynamic)

add_executable(myprogram_static ${MAIN_SRC})
target_link_libraries(myprogram_static ${LIB_NAME}_static)
