# Largest Series Product

Welcome to Largest Series Product on Exercism's Perl Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Given a string of digits, calculate the largest product for a contiguous substring of digits of length n.

For example, for the input `'1027839564'`, the largest product for a series of 3 digits is 270 `(9 * 5 * 6)`, and the largest product for a series of 5 digits is 7560 `(7 * 8 * 3 * 9 * 5)`.

Note that these series are only required to occupy *adjacent positions* in the input; the digits need not be *numerically consecutive*.

For the input `'73167176531330624919225119674426574742355349194934'`,
the largest product for a series of 6 digits is 23520.

For a series of zero digits, the largest product is 1 because 1 is the multiplicative identity.
(You don't need to know what a multiplicative identity is to solve this problem;
it just means that multiplying a number by 1 gives you the same number.)

## Source

### Created by

- @bistik

### Contributed to by

- @dogsleg
- @kytrinyx
- @m-dango
- @petertseng
- @rfilipo

### Based on

A variation on Problem 8 at Project Euler - https://projecteuler.net/problem=8