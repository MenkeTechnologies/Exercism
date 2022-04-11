cmake_minimum_required(VERSION 3.21)
project(hamming C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(hamming
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        hamming.c
        hamming.h
        test_hamming.c)
