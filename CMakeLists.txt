cmake_minimum_required(VERSION 3.13)
project(SimpleAssemblyExample)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS -m32) # Set 32bit Flag

add_executable(SimpleAssemblyExample
        main.cpp
        BASIC/Basic.obj
        MUL/Mul.obj
        REVERSE/Reverse.obj
        PATTERN/Pattern.obj
        )