cmake_minimum_required(VERSION 3.23)
project(binary_search C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(binary_search
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        binary_search.c
        binary_search.h
        test_binary_search.c)
