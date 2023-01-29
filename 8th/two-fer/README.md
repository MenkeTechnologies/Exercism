# Two Fer

Welcome to Two Fer on Exercism's 8th Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

`Two-fer` or `2-fer` is short for two for one. One for you and one for me.

Given a name, return a string with the message:

```text
One for name, one for me.
```

Where "name" is the given name.

However, if the name is the empty string or a null, return the string:

```text
One for you, one for me.
```

Here are some examples:

|Name    |String to return
|:-------|:------------------
|Alice   |One for Alice, one for me.
|Bob     |One for Bob, one for me.
|        |One for you, one for me.
|Zaphod  |One for Zaphod, one for me.

## Running and testing your solutions
 
### From the command line
 
Simply type `8th test.8th`. It is assumed that the 8th binary is declared in the PATH environment variable.
 
### From a REPL
 
Start 8th loading test-words.8th and your solution file:
`8th -f test-words.8th -f two-fer-tests.8th`
This will start a CLI session where you can run tests interactively by copying and pasting them in from two-fer-tests.8th or by entering your own. 
 
### Editing the two-fer-tests.8th file
 
This is encouraged at the beginning of your journey. Insert a back-slash space before all but the first one or two tests. Write your code to solve the first test or two. Then progressively enable more tests until you can pass all of them.

## Source

### Created by

- @axtens

### Based on

https://github.com/exercism/problem-specifications/issues/757