# Pythagorean Triplet

A Pythagorean triplet is a set of three natural numbers, {a, b, c}, for which,

```text
a**2 + b**2 = c**2
```

and such that,

```text
a < b < c
```

For example,

```text
3**2 + 4**2 = 9 + 16 = 25 = 5**2.
```

Given an input integer N, find all Pythagorean triplets for which `a + b + c = N`.

For example, with N = 1000, there is exactly one Pythagorean triplet for which `a + b + c = 1000`: `{200, 375, 425}`.

## Setup

Go through the setup instructions for TypeScript to install the necessary dependencies:

[https://exercism.io/tracks/typescript/installation](https://exercism.io/tracks/typescript/installation)

## Requirements

Install assignment dependencies:

```bash
$ yarn install
```

## Making the test suite pass

Execute the tests with:

```bash
$ yarn test
```

In the test suites all tests but the first have been skipped.

Once you get a test passing, you can enable the next one by changing `xit` to
`it`.

## Source

Problem 9 at Project Euler [http://projecteuler.net/problem=9](http://projecteuler.net/problem=9)

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.
