cmake_minimum_required(VERSION 3.15)
set(PROJECT_NAME zip2)
set(CMAKE_C_STANDARD 99)

INCLUDE_DIRECTORIES(library)
set(CMAKE_C_EXTENSIONS FALSE)

add_subdirectory(library)
add_subdirectory(examples)
