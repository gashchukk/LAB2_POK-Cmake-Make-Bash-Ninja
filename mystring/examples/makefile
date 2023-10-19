CXX = g++
CXXFLAGS = -std=c++17 -O3 -Wall

# Change LIBDIR based on the library type you want (dynamic or static)
LIBDIR_DYNAMIC = ../dynamic/so
LIBDIR_STATIC = ../static/obj

SRC = main.cpp
OBJDIR = obj
EXECUTABLE = main.out

# List of object files from the library (either .o or .a file)
LIB_OBJECTS_DYNAMIC = $(LIBDIR_DYNAMIC)/mystring.o
LIB_OBJECTS_STATIC = $(LIBDIR_STATIC)/libmystring.a

all: create_directory $(OBJDIR)/$(EXECUTABLE)

$(OBJDIR)/$(EXECUTABLE): $(SRC)
	$(CXX) $(CXXFLAGS) -o $@ $< -L $(LIBDIR_DYNAMIC) -lmystring  # For dynamic library

# You can create a separate rule for the static library
static: create_directory $(OBJDIR)/$(EXECUTABLE)_static

$(OBJDIR)/$(EXECUTABLE)_static: $(SRC)
	$(CXX) $(CXXFLAGS) -o $@ $< -L $(LIBDIR_STATIC) -lmystring  # For static library

create_directory:
	mkdir -p $(OBJDIR)

.PHONY: clean

clean:
	rm -rf $(OBJDIR)
