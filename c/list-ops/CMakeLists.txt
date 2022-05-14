cmake_minimum_required(VERSION 3.22)
project(list_ops C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(list_ops
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        list_ops.c
        list_ops.h
        test_list_ops.c)
