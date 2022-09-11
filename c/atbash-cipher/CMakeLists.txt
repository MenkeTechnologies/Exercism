cmake_minimum_required(VERSION 3.23)
project(atbash_cipher C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(atbash_cipher
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        atbash_cipher.c
        atbash_cipher.h
        test_atbash_cipher.c)
