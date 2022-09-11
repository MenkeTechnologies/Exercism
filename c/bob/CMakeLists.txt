cmake_minimum_required(VERSION 3.23)
project(bob C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(bob
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        bob.c
        bob.h
        test_bob.c)
