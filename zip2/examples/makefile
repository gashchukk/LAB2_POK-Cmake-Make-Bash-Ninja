CXX = g++
CXXFLAGS = -std=c++17 -O3 -Wall

SRC_DYNAMIC = bzip2.c
SRC_STATIC = bzip2recover.c

OBJDIR = obj
EXECUTABLE_DYNAMIC = bzip2.out
EXECUTABLE_STATIC = bzip2recover.out

LIBDIR_DYNAMIC = ../dynamic/so
LIBDIR_STATIC = ../static/obj

LIB_OBJECTS_DYNAMIC = $(LIBDIR_DYNAMIC)/mystring.o
LIB_OBJECTS_STATIC = $(LIBDIR_STATIC)/libmystring.a

all: create_directory dynamic_program static_program

dynamic_program: create_directory $(OBJDIR)/$(EXECUTABLE_DYNAMIC)

static_program: create_directory $(OBJDIR)/$(EXECUTABLE_STATIC)

$(OBJDIR)/$(EXECUTABLE_DYNAMIC): $(SRC_DYNAMIC)
	$(CXX) $(CXXFLAGS) -o $@ $< -L $(LIBDIR_DYNAMIC) -lmystring

$(OBJDIR)/$(EXECUTABLE_STATIC): $(SRC_STATIC)
	$(CXX) $(CXXFLAGS) -o $@ $< -L $(LIBDIR_STATIC) -lmystring

create_directory:
	mkdir -p $(OBJDIR)

.PHONY: clean

clean:
	rm -rf $(OBJDIR)
