cmake_minimum_required(VERSION 3.23)
project(roman_numerals C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(roman_numerals
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        roman_numerals.c
        roman_numerals.h
        test_roman_numerals.c)
