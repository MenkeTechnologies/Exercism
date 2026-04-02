# Hangman

Welcome to Hangman on Exercism's Lean Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Implement the logic of the hangman game using functional reactive programming.

[Hangman][hangman] is a simple word guessing game.

[Functional Reactive Programming][frp] is a way to write interactive programs.
It differs from the usual perspective in that instead of saying "when the button is pressed increment the counter", you write "the value of the counter is the sum of the number of times the button is pressed."

Implement the basic logic behind hangman using functional reactive programming.
You'll need to install an FRP library for this, this will be described in the language/track specific files of the exercise.

[hangman]: https://en.wikipedia.org/wiki/Hangman_%28game%29
[frp]: https://en.wikipedia.org/wiki/Functional_reactive_programming

## Except

The return value of the `guess` function is of type `Except String Result`.

An [`Except ε α`][except] represents a computation that may either result in an error of type `ε` or produce a successful value of type `α`. 
It is a monad, allowing such computations to be composed.

## Reactive programming

For practical reasons, this exercise does not require a reactive programming approach.
Instead, consider implementing a [finite-state machine][finite-state-machine].

[except]: https://lean-lang.org/doc/reference/latest/Functors___-Monads-and--do--Notation/Varieties-of-Monads/#Except___error
[finite-state-machine]: https://en.wikipedia.org/wiki/Finite-state_machine

## Source

### Created by

- @oxe-i