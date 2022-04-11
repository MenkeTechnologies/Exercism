cmake_minimum_required(VERSION 3.21)
project(scrabble_score C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(scrabble_score
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        scrabble_score.c
        scrabble_score.h
        test_scrabble_score.c)
