# Spiral Matrix

Welcome to Spiral Matrix on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Given the size, return a square matrix of numbers in spiral order.

The matrix should be filled with natural numbers, starting from 1 in the top-left corner, increasing in an inward, clockwise spiral order, like these examples:

## Examples

### Spiral matrix of size 3

```text
1 2 3
8 9 4
7 6 5
```

### Spiral matrix of size 4

```text
 1  2  3 4
12 13 14 5
11 16 15 6
10  9  8 7
```

The output should be arranged in [row-major order](https://en.wikipedia.org/wiki/Row-_and_column-major_order): all the words in the first row, then the words in the second row, and so on.

## Registers

| Register | Usage        | Type    | Description                         |
| -------- | ------------ | ------- | ----------------------------------- |
| `$a0`    | input        | integer | size                                |
| `$a1`    | input/output | address | matrix of words, in row-major order |
| `$v0`    | output       | integer | number of words in matrix           |
| `$t0-9`  | temporary    | any     | for temporary storage               |

## Source

### Created by

- @keiravillekode

### Based on

Reddit r/dailyprogrammer challenge #320 [Easy] Spiral Ascension. - https://web.archive.org/web/20230607064729/https://old.reddit.com/r/dailyprogrammer/comments/6i60lr/20170619_challenge_320_easy_spiral_ascension/