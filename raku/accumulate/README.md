# Accumulate

Implement the `accumulate` operation, which, given a collection and an
operation to perform on each element of the collection, returns a new
collection containing the result of applying that operation to each element of
the input collection.

Given the collection of numbers:

- 1, 2, 3, 4, 5

And the operation:

- square a number (`x => x * x`)

Your code should be able to produce the collection of squares:

- 1, 4, 9, 16, 25

Check out the test suite to see the expected function signature.

## Restrictions

Keep your hands off that collect/map/fmap/whatchamacallit functionality
provided by your standard library!
Solve this one yourself using other basic tools instead.

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

Conversation with James Edward Gray II [https://twitter.com/jeg2](https://twitter.com/jeg2)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.
