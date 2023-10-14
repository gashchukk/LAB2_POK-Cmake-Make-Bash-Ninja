ifeq ($(TARGET_DEVICE),device1)
    CXX = g++   # Compiler for device1
else
    CXX = clang++   # Default compiler
endif

all: hellomake

hellomake: main_file.o file1.o file2.o
	$(CXX) main_file.o file1.o file2.o -o hellomake

main_file.o: main_file.cpp file1.h file2.h
	$(CXX) -c main_file.cpp

file1.o: file1.cpp file1.h
	$(CXX) -c file1.cpp

file2.o: file2.cpp file2.h
	$(CXX) -c file2.cpp

.PHONY : clean
clean:
	rm -rf *.o hellomake
