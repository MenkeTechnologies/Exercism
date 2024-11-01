# Help

## Running the tests

Execute the tests with:

```bash
scarb cairo-test
```

All but the first test have been ignored. After you get the first test to
pass, open the tests source file which is located in the `tests` directory
and remove the `#[ignore]` flag from the next test and get the tests to pass
again. Each separate test is a function with `#[test]` flag above it.
Continue, until you pass every test.

If you wish to run _all_ tests without editing the tests source file, use:

```bash
scarb cairo-test --include-ignored
```

To run a specific test no matter if it's ignored or not, for example `some_test`, you can use:

```bash
scarb cairo-test -f some_test
```

To learn more about Cairo tests refer to the online [test documentation][cairo-tests].

[cairo-tests]: https://book.cairo-lang.org/ch10-01-how-to-write-tests.html

## Submitting your solution

You can submit your solution using the `exercism submit src/lib.cairo` command.
This command will upload your solution to the Exercism website and print the solution page's URL.

It's possible to submit an incomplete solution which allows you to:

- See how others have completed the exercise
- Request help from a mentor

## Need to get help?

If you'd like help solving the exercise, check the following pages:

- The [Cairo track's documentation](https://exercism.org/docs/tracks/cairo)
- The [Cairo track's programming category on the forum](https://forum.exercism.org/c/programming/cairo)
- [Exercism's programming category on the forum](https://forum.exercism.org/c/programming/5)
- The [Frequently Asked Questions](https://exercism.org/docs/using/faqs)

Should those resources not suffice, you could submit your (incomplete) solution to request mentoring.

## Cairo Installation

Refer to the [exercism help page][help-page] for Cairo installation and learning
resources.

## Submitting the solution

Generally you should submit all files in which you implemented your solution (`src/lib.cairo` in most cases). If you are using any external crates, please consider submitting the `Scarb.toml` file. This will make the review process faster and clearer.

## Feedback, Issues, Pull Requests

The GitHub [track repository][github] is the home for all of the Cairo exercises. If you have feedback about an exercise, or want to help implement new exercises, head over there and create an issue. Members of the Cairo track team are happy to help!

If you want to know more about Exercism, take a look at the [contribution guide].

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.

[help-page]: https://exercism.org/tracks/cairo/learning
[github]: https://github.com/exercism/cairo
[contribution guide]: https://exercism.org/docs/community/contributors