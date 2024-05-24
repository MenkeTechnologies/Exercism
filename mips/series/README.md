# Series

Welcome to Series on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Given a string of digits, output all the contiguous substrings of length `n` in that string in the order that they appear.

For example, the string "49142" has the following 3-digit series:

- "491"
- "914"
- "142"

And the following 4-digit series:

- "4914"
- "9142"

And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

Note that these series are only required to occupy _adjacent positions_ in the input;
the digits need not be _numerically consecutive_.

## Output format

Output a null-terminated string, using a comma and a space as separators.

An example output would be `"491, 914, 142"`

If the input is invalid, output an empty string.

## Registers

| Register | Usage        | Type    | Description                    |
| -------- | ------------ | ------- | ------------------------------ |
| `$a0`    | input        | address | null-terminated series string  |
| `$a1`    | input        | integer | slice length                   |
| `$a2`    | input/output | address | null-terminated output string  |
| `$t0-9`  | temporary    | any     | used for temporary storage     |

## Source

### Created by

- @keiravillekode

### Based on

A subset of the Problem 8 at Project Euler - https://projecteuler.net/problem=8