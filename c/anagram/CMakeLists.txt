cmake_minimum_required(VERSION 3.23)
project(anagram C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(anagram
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        anagram.c
        anagram.h
        test_anagram.c)
