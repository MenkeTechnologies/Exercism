cmake_minimum_required(VERSION 3.22)
project(rna_transcription C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(test-framework)

add_executable(rna_transcription
        test-framework/unity.c
        test-framework/unity.h
        test-framework/unity_internals.h
        rna_transcription.c
        rna_transcription.h
        test_rna_transcription.c)
