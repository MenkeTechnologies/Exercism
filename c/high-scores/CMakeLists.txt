cmake_minimum_required(VERSION 3.25)
project(high_scores C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)


add_executable(high_scores
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        high_scores.c
        high_scores.h
        test_high_scores.c)

target_compile_options(high_scores PRIVATE -Wall -Wextra -Wpedantic -Werror)
