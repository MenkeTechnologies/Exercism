# Grains

Welcome to Grains on Exercism's Euphoria Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.

There once was a wise servant who saved the life of a prince.
The king promised to pay whatever the servant could dream up.
Knowing that the king loved chess, the servant told the king he would like to have grains of wheat.
One grain on the first square of a chess board, with the number of grains doubling on each successive square.

There are 64 squares on a chessboard (where square 1 has one grain, square 2 has two grains, and so on).

Write code that shows:

- how many grains were on a given square, and
- the total number of grains on the chessboard

## Numbers in Euphoria

In Euphoria an `atom` can hold any kind of number, with the subtype `integer` meant for whole numbers.
It is possible to solve this exercise in C-like languages by returning an unsigned 64 bit integer.

However integers in Euphoria are signed and _one bit smaller than the machine word_, hence too small for this exercise, whereas atoms can hold larger integers with the needed 64 bits of precision.

### 32-bit

There is a 32-bit version of Euphoria, which still exists so that legacy applications can continue to use pre-built 32-bit dll/so when no 64-bit version is available, or the wrapper for such is full of hard-coded 32-bit offsets.
This version is entirely inadequate to solve this task, since those atoms only have 53 bits of precision.
If you are struggling to solve this exercise locally, make sure that you are using a 64-bit version of Euphoria.

## Source

### Created by

- @axtens

### Based on

The CodeRanch Cattle Drive, Assignment 6 - https://coderanch.com/wiki/718824/Grains