cmake_minimum_required(VERSION 3.23)
project(collatz_conjecture C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(collatz_conjecture
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        collatz_conjecture.c
        collatz_conjecture.h
        test_collatz_conjecture.c)
