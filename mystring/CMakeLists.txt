cmake_minimum_required(VERSION 3.15)
set(PROJECT_NAME mystring_project)
set(CMAKE_CXX_STANDARD 20)

INCLUDE_DIRECTORIES(library)

add_subdirectory(library)
add_subdirectory(examples)
