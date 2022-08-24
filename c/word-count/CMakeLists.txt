cmake_minimum_required(VERSION 3.23)
project(word_count C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(word_count
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        test_word_count.c
        word_count.c
        word_count.h)
