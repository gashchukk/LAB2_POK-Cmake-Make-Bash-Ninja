SET(mystring_FILES mystring.cpp mystring.hpp)
ADD_LIBRARY(mystring ${mystring_FILES})
# TARGET_INCLUDE_DIRECTORIES(mystring ${CMAKE_CURRENT_SOURCE_DIR})