SET(main_FILE main.cpp)

# For visual studio compiler
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()

ADD_EXECUTABLE(main ${main_FILE})
TARGET_LINK_LIBRARIES(main mystring)
