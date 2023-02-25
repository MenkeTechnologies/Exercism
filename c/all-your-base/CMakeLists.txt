cmake_minimum_required(VERSION 3.24)
project(all_your_base C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(all_your_base
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        all_your_base.c
        all_your_base.h
        test_all_your_base.c)
