# Lab work <mark>NUMBER 2</mark>: <mark>Supplement libraries with a compilation system</mark>
Authors (team): <mark>Shumskyi Dmytro, Hashchuk Bohdan, Arnauta Lisa</mark><br>
Variant: <mark>0</mark>

## Work distribution
  __Shell:__ Arnauta
  
  __Make:__ Hashchuk
  
  __Cmake:__ Shumskyi
  
  __Ninja:__ Shumskyi

## Prerequisites

<mark>
You need to install this before start:
  
  1. Install Cmake
     
  2. Install Make

  3. Install bash, CLI shell

  4. C++ compiler must be installed (obviously)
</mark>

### Compilation

<mark>
For both mystring and zip2 directories compiling the CMake,makefile, Bash and Ninja is the same.
To run this files you have to run these commnads:

__CMake:__
```
 cmake -B build
 cd build
 cmake ..
 make
```
__Makefile:__
```
 cd library
 make
 cd ..
 cd examples
 make
```
__Bash:__
```
 bash compile.sh
```
__Ninja:__
```
  cd mystring
  ninja
```
</mark>


### Usage

<mark>
Make usage:

  1. go to directory ``` ./library ```

  2. open and compile makefile by command:``` make ```

  3. then go to directory ``` ./examples  ```

  4. by the analogy: open and compile makefile by command:``` make ```

  5. launch executable files

bash usage:

  just write in terminal command:
  ``` bash compile.sh ```

cmake usage:

  1) Return to compile step
  2)  Write in terminal
   ``` cd build
      cd examples/mystring
 ```
  3)  then run the file `./name.out`
  
</mark>

### Important!

<mark>If you use Visual Studio ensure that this part of code in Cmake file is included:
```
if(MSVC)
    set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
endif()
```

Also in `./examples/makefile` file there can be a bit confusing declaration:
```
-I$(SRC_DIR)
```
It tells to complier where to look for `.h` files
Also, in our static library we use next declaration:
```
ar rcs lib/libmylibrary_s.a obj/blocksort.o obj/compress.o obj/decompress.o obj/randtable.o obj/bzlib.o obj/crctable.o obj/huffman.o
```
this command `ar rcs` tells that our result file will be archive `libmylibrary_s.a`
</mark>

### Results

<mark>It this lab we learned on practice how to implement 4 different compilation methods such as CMake, Make, Bash and Ninja. We compiled our own mystring library and zip2 library which was given. Our implementation compiles both `dynamic` and `static` labraries.
In the dynamic implementation we create folder i which will be stored our `.o` files. 
In the static library we just create an executable file which is linked to the library</mark>

# Additional tasks
<mark>
As Additional task was implenemted `Ninja`
<mark>
