# Semi Structured Logs

Welcome to Semi Structured Logs on Exercism's Cairo Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Enums, short for enumerations, are a type that limits all possible values of
some data. The possible values of an `enum` are called variants. Enums also
work well with `match` and other control flow operators to help you express
intent in your Cairo programs.

## Instructions

In this exercise you'll be generating semi-structured log messages.

## Emit semi-structured messages

You'll start with some stubbed functions and the following enum:

```rust
#[derive(Drop, Clone, PartialEq, Debug)]
pub enum LogLevel {
    Info,
    Warning,
    Error,
    Debug
}
```

Your goal is to emit a log message as follows: `"[<LEVEL>]: <MESSAGE>"`.
You'll need to implement functions that correspond with log levels.

For example, the below snippet demonstrates an expected output for the `log` function.

```rust
log(LogLevel::Error, "Stack overflow")
// Returns: "[ERROR]: Stack overflow"
```

And for `info`:

```rust
info("Timezone changed")
// Returns: "[INFO]: Timezone changed"
```

Have fun!

## Source

### Created by

- @0xNeshi