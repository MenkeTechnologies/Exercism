cmake_minimum_required(VERSION 3.22)
project(queen_attack C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(queen_attack
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        queen_attack.c
        queen_attack.h
        test_queen_attack.c)
