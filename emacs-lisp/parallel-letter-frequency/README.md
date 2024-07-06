# Parallel Letter Frequency

Welcome to Parallel Letter Frequency on Exercism's Emacs Lisp Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Count the frequency of letters in texts using parallel computation.

Parallelism is about doing things in parallel that can also be done sequentially.
A common example is counting the frequency of letters.
Employ parallelism to calculate the total frequency of each letter in a list of texts.

## Using Parallelism

The goal of this exercise is to practice parallelism with Emacs Lisp.

In Emacs Lisp this can be achieved by using [`asynchronous processes`](https://www.gnu.org/software/emacs/manual/html_node/elisp/Asynchronous-Processes.html#:~:text=An%20asynchronous%20process%20is%20controlled,%2Dtype%20(see%20below)).

You may also want to look at the documentation for [`batch mode`](https://www.gnu.org/software/emacs/manual/html_node/elisp/Batch-Mode.html), [`sentinels`](https://www.gnu.org/software/emacs/manual/html_node/elisp/Sentinels.html) and [`receiving output from processes`](https://www.gnu.org/software/emacs/manual/html_node/elisp/Output-from-Processes.html).

## Source

### Created by

- @kmarker1101

### Contributed to by

- @fapdash
- @BNAndras