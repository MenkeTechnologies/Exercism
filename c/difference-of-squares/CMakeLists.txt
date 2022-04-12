cmake_minimum_required(VERSION 3.21)
project(difference_of_squares C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(difference_of_squares
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        difference_of_squares.c
        difference_of_squares.h
        test_difference_of_squares.c)
