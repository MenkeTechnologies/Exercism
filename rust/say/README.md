# Say

Welcome to Say on Exercism's Rust Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

Your friend Yaʻqūb works the counter at the busiest deli in town, slicing, weighing, and wrapping orders for a never-ending line of hungry customers.
To keep things moving, each customer takes a numbered ticket when they arrive.

When it’s time to call the next person, Yaʻqūb reads their number out loud, always in full English words to make sure everyone hears it clearly.

## Instructions

Given a number, your task is to express it in English words exactly as your friend should say it out loud.
Yaʻqūb expects to use numbers from 0 up to 999,999,999,999.

Examples:

- 0 → zero
- 1 → one
- 12 → twelve
- 123 → one hundred twenty-three
- 1,234 → one thousand two hundred thirty-four

## Rust Specific Exercise Notes

This is slightly changed in the Rust version, compared to other
language versions of this exercise.  Instead of requiring you to return
errors for out of range, we are using Rust's strong type system to limit
input.  It is much easier to make a function deal with all valid inputs,
rather than requiring the user of your module to handle errors.

### Extension

Add capability of converting up to the max value for u64: `18_446_744_073_709_551_615`.

For hints at the output this should have, look at the last test case.

## Source

### Created by

- @sacherjj

### Contributed to by

- @AndrewKvalheim
- @attilahorvath
- @AvasDream
- @ClashTheBunny
- @coriolinus
- @cwhakes
- @efx
- @ErikSchierboom
- @f3rn0s
- @lutostag
- @nfiles
- @petertseng
- @rofrol
- @stringparser
- @xakon
- @ZapAnton

### Based on

A variation on the JavaRanch CattleDrive, Assignment 4 - https://web.archive.org/web/20240907035912/https://coderanch.com/wiki/718804