# Lab work <mark>NUMBER 2</mark>: <mark>Supplement libraries with a compilation system</mark>
Authors (team): <mark>Shumskyi Dmytro, Hashchuk Bohdan, Arnauta Lisa</mark><br>
Variant: <mark>0</mark>

## Work distribution
  Shell: Arnauta
  Make: Hashchuk
  Cmake: Shumskyi
  Ninja: Shumskyi

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
for cmake:
- Compiles the same way both for mystring and zip2
1) ➜ cmake -B build
2) ➜ cd build
3) ➜ cmake ..
4) ➜ make

for make:
- Compiles the same way both for mystring and zip2
1) ➜ cd library
2) ➜ make
3) ➜ cd ..
4) ➜ cd examples
5) ➜ make

for bash:
- Compiles the same way both for mystring and zip2
 ➜ bash compile.sh

for ninja:
 ➜ cd mystring
 ➜ ninja

</mark>


### Usage

<mark>
make usage:

  1. go to directory ./library

  2. open and compile makefile by command: make

  3. then go to directory ./examples

  4. by the analogy: open and compile makefile by command: make

  5. launching executable files

bash usage:

  just write in terminal command:

        bash compile.sh 

cmake usage:

  1) Return to compile step
  2)  ➜ cd build
      ➜ cd examples/mystring
      then run the file `./name.out`
  
</mark>

### Important!

<mark>//write here</mark>

### Results

<mark>In this lab, we learned how to work with static and dynamic libraries and link them.</mark>

# Additional tasks
<mark>
we have done an application task: ninja
<mark>

# ATTENTION!
  
Additional tasks not listed in the previous paragraph would not be graded.

Be sure to provide a complete list of authors.

