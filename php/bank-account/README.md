# Bank Account

Welcome to Bank Account on Exercism's PHP Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Simulate a bank account supporting opening/closing, withdrawals, and deposits of money.
Watch out for concurrent transactions!

A bank account can be accessed in multiple ways.
Clients can make deposits and withdrawals using the internet, mobile phones, etc.
Shops can charge against the account.

Create an account that can be accessed from multiple threads/processes (terminology depends on your programming language).

It should be possible to close an account; operations against a closed account must fail.

## Concurrency
The PHP version of this exercise does not require using concurrency and the exercises testing concurrency specifically have been omitted.

## Source

### Created by

- @MichaelBunker