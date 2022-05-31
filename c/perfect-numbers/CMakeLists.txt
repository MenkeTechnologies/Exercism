cmake_minimum_required(VERSION 3.22)
project(perfect_numbers C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(perfect_numbers
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        perfect_numbers.c
        perfect_numbers.h
        test_perfect_numbers.c)
