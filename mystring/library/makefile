CXX = g++

# Make conditioning here
# ifeq ($(TARGET_DEVICE),device1)
#     CXX = g++   # Compiler for device1
# else
#     CXX = clang++   # Default compiler
# endif

all: hellomake

hellomake: main.o mystring.o
	$(CXX) main.o mystring.o -o hellomake

main.o: ../examples/main.cpp mystring.hpp
	$(CXX) -c ../examples/main.cpp

mystring.o: mystring.cpp mystring.hpp
	$(CXX) -c mystring.cpp

.PHONY: clean
clean:
	rm -rf *.o hellomake
