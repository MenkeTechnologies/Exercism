cmake_minimum_required(VERSION 3.27)
project(pop_count C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(pop_count
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        pop_count.c
        pop_count.h
        test_pop_count.c)
