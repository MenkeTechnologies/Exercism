# Scrabble Score

Given a word, compute the Scrabble score for that word.

## Letter Values

You'll need these:

```text
Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
```

## Examples

"cabbage" should be scored as worth 14 points:

- 3 points for C
- 1 point for A, twice
- 3 points for B, twice
- 2 points for G
- 1 point for E

And to total:

- `3 + 2*1 + 2*3 + 2 + 1`
- = `3 + 2 + 6 + 3`
- = `5 + 9`
- = 14

## Extensions

- You can play a double or a triple letter.
- You can play a double or a triple word.

## Resources

Remember to check out the Raku [documentation](https://docs.raku.org/) and
[resources](https://raku.org/resources/) pages for information, tips, and
examples if you get stuck.

## Running the tests

There is a test suite and module included with the exercise.
The test suite (a file with the extension `.rakutest`) will attempt to run routines
from the module (a file with the extension `.rakumod`).
Add/modify routines in the module so that the tests will pass! You can view the
test data by executing the command `raku --doc *.rakutest` (\* being the name of the
test suite), and run the test suite for the exercise by executing the command
`prove6 .` in the exercise directory.

## Source

Inspired by the Extreme Startup game [https://github.com/rchatley/extreme_startup](https://github.com/rchatley/extreme_startup)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.
