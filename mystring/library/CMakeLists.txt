SET(mystring_FILES mystring.cpp mystring.hpp)

# For visual studio compiler
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()

ADD_LIBRARY(mystring ${mystring_FILES})