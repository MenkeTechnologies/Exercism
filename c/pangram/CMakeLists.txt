cmake_minimum_required(VERSION 3.22)
project(pangram C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(pangram
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        pangram.c
        pangram.h
        test_pangram.c)
