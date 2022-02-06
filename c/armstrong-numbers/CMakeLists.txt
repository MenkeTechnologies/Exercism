cmake_minimum_required(VERSION 3.21)
project(armstrong_numbers C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(armstrong_numbers
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        armstrong_numbers.c
        armstrong_numbers.h
        test_armstrong_numbers.c)
