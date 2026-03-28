# Reverse String

Welcome to Reverse String on Exercism's R Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

Reversing strings (reading them from right to left, rather than from left to right) is a surprisingly common task in programming.

For example, in bioinformatics, reversing the sequence of DNA or RNA strings is often important for various analyses, such as finding complementary strands or identifying palindromic sequences that have biological significance.

## Instructions

Your task is to reverse a given string.

Some examples:

- Turn `"stressed"` into `"desserts"`.
- Turn `"strops"` into `"sports"`.
- Turn `"racecar"` into `"racecar"`.

### Bonus tests

Enable tests with grapheme clusters by uncommenting (or defining) `enable_grapheme_clusters <- TRUE`.

For example:

- Turn `"Würstchenstand"` into `"dnatsnehctsrüW"`.

You may find the `stringr` library helpful.

## Source

### Created by

- @colinleach
- @jonmcalder

### Based on

Introductory challenge to reverse an input string - https://www.freecodecamp.org/news/how-to-reverse-a-string-in-javascript-in-3-different-ways-75e4763c68cb