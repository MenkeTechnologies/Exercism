# Square Root

Welcome to Square Root on Exercism's Roc Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Given a natural radicand, return its square root.

Note that the term "radicand" refers to the number for which the root is to be determined.
That is, it is the number under the root symbol.

Check out the Wikipedia pages on [square root][square-root] and [methods of computing square roots][computing-square-roots].

Recall also that natural numbers are positive real whole numbers (i.e. 1, 2, 3 and up).

[square-root]: https://en.wikipedia.org/wiki/Square_root
[computing-square-roots]: https://en.wikipedia.org/wiki/Methods_of_computing_square_roots

This problem can be solved easily using Roc's built-in `Num` module, including the [`Num.sqrt`][sqrt] function.

However, we'd like you to consider the challenge of solving this exercise without using built-ins or modules.

While there is a mathematical formula that will find the square root of _any_ number, we have gone the route of having only [natural numbers][natural-number] (positive integers) as solutions.

[sqrt]: https://www.roc-lang.org/builtins/Num#sqrt
[natural-number]: https://en.wikipedia.org/wiki/Natural_number

## Source

### Created by

- @ageron

### Based on

wolf99 - https://github.com/exercism/problem-specifications/pull/1582