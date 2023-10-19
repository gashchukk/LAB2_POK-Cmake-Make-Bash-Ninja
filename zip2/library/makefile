CC = gcc
CFLAGS = -O3 -Wall
LDFLAGS = -shared

SRC = *.c
OBJDIR = ../dynamic/obj
SODIR = ../dynamic/so
STATICOBJDIR = ../static/obj

DYNAMIC_LIB = $(SODIR)/libmylibrary.so
STATIC_LIB = $(STATICOBJDIR)/libmylibrary.a


all: mylibrary_dynamic mylibrary_static

mylibrary_dynamic: create_directory $(DYNAMIC_LIB)
	$(CXX) $(LDFLAGS) -o $(SODIR)/libmylibrary.so $(OBJDIR)/mylibrary.o

mylibrary_static: create_directory $(STATIC_LIB)
	ar rcs $(STATICOBJDIR)/libmylibrary.a $(STATICOBJDIR)/mylibrary.o

$(DYNAMIC_LIB): $(wildcard $(SRC))
	$(CC) $(CFLAGS) -fPIC -o $@ $<

$(STATIC_LIB): $(wildcard $(SRC))
	$(CC) -c $(CFLAGS) $^
	ar rcs $@ $(wildcard $(SRC))

.PHONY: clean

create_directory:
	mkdir -p $(OBJDIR)
	mkdir -p $(SODIR)
	mkdir -p $(STATICOBJDIR)

clean:
	rm -rf ../dynamic ../static
