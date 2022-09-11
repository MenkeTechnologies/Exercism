cmake_minimum_required(VERSION 3.23)
project(matching_brackets C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(matching_brackets
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        matching_brackets.c
        matching_brackets.h
        test_matching_brackets.c)
