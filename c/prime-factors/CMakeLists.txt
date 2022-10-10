cmake_minimum_required(VERSION 3.23)
project(prime_factors C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(prime_factors
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        prime_factors.c
        prime_factors.h
        test_prime_factors.c)
