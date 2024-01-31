# All Your Base

Welcome to All Your Base on Exercism's MIPS Assembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Convert a number, represented as a sequence of digits in one base, to any other base.

Implement general base conversion.
Given a number in base **a**, represented as a sequence of digits, convert it to base **b**.

## Note

- Try to implement the conversion yourself.
  Do not use something else to perform the conversion for you.

## About [Positional Notation][positional-notation]

In positional notation, a number in base **b** can be understood as a linear combination of powers of **b**.

The number 42, _in base 10_, means:

`(4 * 10^1) + (2 * 10^0)`

The number 101010, _in base 2_, means:

`(1 * 2^5) + (0 * 2^4) + (1 * 2^3) + (0 * 2^2) + (1 * 2^1) + (0 * 2^0)`

The number 1120, _in base 3_, means:

`(1 * 3^3) + (1 * 3^2) + (2 * 3^1) + (0 * 3^0)`

I think you got the idea!

_Yes. Those three numbers above are exactly the same. Congratulations!_

[positional-notation]: https://en.wikipedia.org/wiki/Positional_notation

## Registers

| Register | Usage        | Type    | Description                                  |
| -------- | ------------ | ------- | -------------------------------------------- |
| `$a0`    | input        | integer | number of input digits                       |
| `$a1`    | input        | integer | base for input digits                        |
| `$a2`    | input        | integer | base for output digits                       |
| `$a3`    | input/output | address | overwritable array of digit words            |
| `$v0`    | output       | integer | number of output digits, -1 if input invalid |
| `$t0-9`  | temporary    | any     | used for temporary storage                   |

## Source

### Created by

- @keiravillekode