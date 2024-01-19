# Acronym

Welcome to Acronym on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Convert a phrase to its acronym.

Techies love their TLA (Three Letter Acronyms)!

Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).

Punctuation is handled as follows: hyphens are word separators (like whitespace); all other punctuation can be removed from the input.

For example:

| Input                     | Output |
| ------------------------- | ------ |
| As Soon As Possible       | ASAP   |
| Liquid-crystal display    | LCD    |
| Thank George It's Friday! | TGIF   |

## Registers

| Register | Usage        | Type    | Description                   |
| -------- | ------------ | ------- | ----------------------------- |
| `$a0`    | input        | address | null-terminated input string  |
| `$a1`    | input/output | address | null-terminated output string |
| `$t0-9`  | temporary    | any     | used for temporary storage    |

## Source

### Created by

- @keiravillekode

### Based on

Julien Vanier - https://github.com/monkbroc