cmake_minimum_required(VERSION 3.23)
project(nth_prime C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(nth_prime
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        nth_prime.c
        nth_prime.h
        test_nth_prime.c)
