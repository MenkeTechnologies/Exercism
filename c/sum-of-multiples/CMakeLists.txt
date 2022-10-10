cmake_minimum_required(VERSION 3.23)
project(sum_of_multiples C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(sum_of_multiples
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        sum_of_multiples.c
        sum_of_multiples.h
        test_sum_of_multiples.c)
