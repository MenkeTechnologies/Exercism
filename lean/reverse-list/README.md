# Reverse List

Welcome to Reverse List on Exercism's Lean Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Your task is to prove the equality between a custom list reversing function and the built-in `List.reverse`.

Due to the nature of this exercise, instead of relying on traditional runtime tests, the proof is checked by a theorem `check`.
You may consider the test passing if this theorem typechecks.

If you work locally or in Lean's [online playground][playground], you will get instant feedback on whether any theorem succeeds or fails, and why it fails, through Lean InfoView.
It is an invaluable tool, capable of showing all local values in use by your proof, and your current goal.

[playground]: https://live.lean-lang.org/

~~~~exercism/caution
The `sorry` tactic makes any proof appear to be correct. 
For this reason, the `check` theorem might appear to automatically typecheck before any proof is actually written.
Once you remove `sorry` from your proof, Lean InfoView will show the correct feedback.
~~~~

## Proving theorems in Lean

Theorem proving is an integral part of Lean.
It empowers programmers to prove properties about their programs, reason about their behavior, and encode constraints and specifications at the type level.

[This chapter][introduction] provides a good introduction to theorem proving in Lean.
For a deeper dive, [this book][advanced] is listed as an official resource on the Lean website.

Lean offers many tactics that can automate proofs, or parts of them. 
You might want to check a [language reference][reference].

~~~~exercism/advanced
We can use the compiler attribute `csimp` on a theorem proving equality between two definitions.
This attribute instructs the compiler to use the second definition in place of the first:

```lean
@[csimp]
theorem custom_reverse_eq_spec_reverse : @Extra.custom_reverse = @List.reverse := by
    ... -- proof here

-- now any occurrence of `Extra.custom_reverse` may now compile to `List.reverse`.
```

It is particularly useful in situations where an implementation is more efficient but less clear.
We can write a simple specification and have compiled code use the more efficient implementation instead.
Many `List` and `Array` functions use this pattern.
~~~~

[introduction]: https://lean-lang.org/functional_programming_in_lean/Programming___-Proving___-and-Performance/
[advanced]: https://lean-lang.org/theorem_proving_in_lean4/
[reference]: https://lean-lang.org/doc/reference/latest/Tactic-Proofs/#tactics

## Source

### Created by

- @oxe-i