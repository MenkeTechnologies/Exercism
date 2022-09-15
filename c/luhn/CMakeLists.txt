cmake_minimum_required(VERSION 3.23)
project(luhn C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(luhn
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        luhn.c
        luhn.h
        test_luhn.c)
