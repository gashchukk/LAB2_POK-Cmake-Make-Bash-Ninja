cmake_minimum_required(VERSION 3.17)
project(mystring_project)

set(CMAKE_CXX_STANDARD 17)

SET(mystring_FILES mystring.cpp mystring.hpp)

# For visual studio compiler
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()

ADD_LIBRARY(mystring_static STATIC ${mystring_FILES})
ADD_LIBRARY(mystring_dynamic SHARED ${mystring_FILES})
