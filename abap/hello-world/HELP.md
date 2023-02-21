# Help

## Running the tests

You can implement an exercise in your own SAP system. Follow these steps:

1. Create a SAP package for all Exercism exercises in your system (recommended name: `$EXERCISM`)
2. Create a SAP package for each exercise as a subpackage (recommended name: `$EXERCISM_<name-of-exercise>`, example: `$EXERCISM_HELLO-WORLD`)
3. Create an ABAP class corresponding to the exercise (example: `ZCL_HELLO_WORLD`)
4. Copy the template code from Exercism to the class
5. Maintain the test classes and copy the code from Exercism to the test class

Now you can complete the implementation of the class and run the unit test to see if your solution works properly.

Note: This package setup will allow you to backup all your work using [abapGit](https://abapgit.org) by creating a repo for package `$EXERCISM`.

For more details, see [Exercism ABAP Docs](https://exercism.org/docs/tracks/abap).

## Submitting your solution

You can submit your solution using the `exercism submit zcl_hello_world.clas.abap` command.
This command will upload your solution to the Exercism website and print the solution page's URL.

It's possible to submit an incomplete solution which allows you to:

- See how others have completed the exercise
- Request help from a mentor

## Need to get help?

If you'd like help solving the exercise, check the following pages:

- The [ABAP track's documentation](https://exercism.org/docs/tracks/abap)
- [Exercism's programming category on the forum](https://forum.exercism.org/c/programming/5)
- The [Frequently Asked Questions](https://exercism.org/docs/using/faqs)

Should those resources not suffice, you could submit your (incomplete) solution to request mentoring.

To get help if you're having trouble, you can use one of the following resources:

- [How to learn ABAP](https://exercism.org/docs/tracks/abap/learning)
- [Useful ABAP resources](https://exercism.org/docs/tracks/abap/resources)
- Find a mentor in the [ABAP Track](https://exercism.org/tracks/abap)
- [Learn more about getting mentored](https://exercism.org/docs/using/feedback/guide-to-being-mentored)