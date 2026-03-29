# Collatz Conjecture

Welcome to Collatz Conjecture on Exercism's Lean Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

One evening, you stumbled upon an old notebook filled with cryptic scribbles, as though someone had been obsessively chasing an idea.
On one page, a single question stood out: **Can every number find its way to 1?**
It was tied to something called the **Collatz Conjecture**, a puzzle that has baffled thinkers for decades.

The rules were deceptively simple.
Pick any positive integer.

- If it's even, divide it by 2.
- If it's odd, multiply it by 3 and add 1.

Then, repeat these steps with the result, continuing indefinitely.

Curious, you picked number 12 to test and began the journey:

12 ➜ 6 ➜ 3 ➜ 10 ➜ 5 ➜ 16 ➜ 8 ➜ 4 ➜ 2 ➜ 1

Counting from the second number (6), it took 9 steps to reach 1, and each time the rules repeated, the number kept changing.
At first, the sequence seemed unpredictable — jumping up, down, and all over.
Yet, the conjecture claims that no matter the starting number, we'll always end at 1.

It was fascinating, but also puzzling.
Why does this always seem to work?
Could there be a number where the process breaks down, looping forever or escaping into infinity?
The notebook suggested solving this could reveal something profound — and with it, fame, [fortune][collatz-prize], and a place in history awaits whoever could unlock its secrets.

[collatz-prize]: https://mathprize.net/posts/collatz-conjecture/

## Instructions

Given a positive integer, return the number of steps it takes to reach 1 according to the rules of the Collatz Conjecture.

## Subtypes

This exercise defines a Subtype called `Positive`, for all natural numbers greater than 0.
A Subtype can be thought of as a pair `⟨x, h⟩`, where x is the value and h is the proof of its validity.

The value inside a Subtype (x, in this case) can be accessed by using .val, for example, `x.val`.
Its proof can be accessed by using .property, for example, `x.property`.
Both can also be accessed by pattern matching, as usual.

In order to construct a value for a Subtype, it is necessary to prove its validity, in this case, that the number is greater than 0.

There are a number of lemmas and theorems in Lean that may serve as a starting point for this proof.
For example, `Nat.zero_lt_succ` is a lemma that asserts that for any natural number `n`: `0 < n + 1`.

~~~~exercism/advanced
A good reference for theorem proving in Lean can be found in [the core documentation][theorem-proving].

[theorem-proving]: https://lean-lang.org/theorem_proving_in_lean4/
~~~~

## Proof of termination

In Lean, recursive functions must prove their termination.
This proof is sometimes straightforward, following implicitly from the structure of a function.
In other cases, it must be made explicit.

In this exercise, the termination of the function is precisely the `collatz conjecture`, which is an open mathematical problem.

Consider using one of the following options:

1. Adding the `partial` keyword before the declaration of a function disables termination checking and allows for (potentially unsafe) recursive calls.
2. Imperative constructs allowed in monadic code, such as `while`, are implemented using partial recursion under the hood, so they can be used whenever termination is not enforced.
   Using the `Id` monad is a convenient way to enable these constructs in otherwise pure-looking code, without introducing additional effects.
3. Defining a helper with an extra parameter for the maximum number of recursive calls ensures termination.

## Source

### Created by

- @oxe-i

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Collatz_conjecture