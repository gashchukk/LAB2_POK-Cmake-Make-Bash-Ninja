CXX = g++
CXXFLAGS = -std=c++17 -O3 -Wall
LDFLAGS = -shared

SRC = mystring.cpp
OBJDIR = ../dynamic/obj
SODIR = ../dynamic/so
STATICOBJDIR = ../static/obj

all: mystring_dynamic mystring_static

mystring_dynamic: create_directory $(OBJDIR)/mystring.o
	$(CXX) $(LDFLAGS) -o $(SODIR)/libmystring.so $(OBJDIR)/mystring.o

mystring_static: create_directory $(STATICOBJDIR)/mystring.o
	ar rcs $(STATICOBJDIR)/libmystring.a $(STATICOBJDIR)/mystring.o

$(OBJDIR)/mystring.o: $(SRC)
	$(CXX) $(CXXFLAGS) -fPIC -c $< -o $@

$(STATICOBJDIR)/mystring.o: $(SRC)
	$(CXX) $(CXXFLAGS) -c $< -o $@

create_directory:
	mkdir -p $(OBJDIR)
	mkdir -p $(SODIR)
	mkdir -p $(STATICOBJDIR)

.PHONY: clean

clean:
	rm -rf ../dynamic ../static