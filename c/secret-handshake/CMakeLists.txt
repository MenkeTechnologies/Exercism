cmake_minimum_required(VERSION 3.23)
project(secret_handshake C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(secret_handshake
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        secret_handshake.c
        secret_handshake.h
        test_secret_handshake.c)
