# Stream Ops

Welcome to Stream Ops on Exercism's Unison Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Instructions

Implement basic `Stream` ability operations.

In functional languages, functions like `filter`, `map`, and
`reduce` are very common. Implement a series of basic functional combinators for a stream ability
without using existing functions. You'll need to write your own [ability handlers](https://www.unisonweb.org/docs/abilities/#creating-and-handling-abilities) for this.

💡 We're going to call this ability `MyStream` to avoid conflicting with the existing `Stream` ability in the standard library.

The operations you'll need to implement are:

* `MyStream.fromList` (*given a list of elements, create a stream of elements* )
* `MyStream.toList` (*given a stream of elements, materialize it to a list*)
* `MyStream.toListWithResult` (*given a stream of elements, materialize it to a list alongside the result of the stream function*)
* `MyStream.ignore` (*given a stream of elements, ignore the emitted values, returning the results of the stream function*)
* `MyStream.filter` (*given a predicate and a `MyStream`, return the `MyStream` of all items for which `predicate(item)` is true*);
* `MyStream.map` (*given a function and a `MyStream`, return the `MyStream` of the results of applying `function(item)` on all items*);
* `MyStream.flatMap` (*given a function which produces a `MyStream` and a `MyStream`, return the `MyStream` of the results of applying `function(item)` on all items*)

## About the Stream ability

A `Stream` is a Unison ability that is used to emit values.

You might use the `Stream` ability if you have a function which should produce values as a secondary effect while it is being called. For example, this function returns the last value of the list, but emits a running total as each element is seen:

```
emitRunningTotal : '{Stream Nat} Nat
emitRunningTotal = 'let
  use Nat +
  List.foldLeft (
    acc a -> let
      runningTotal = acc + a
      Stream.emit runningTotal
      a
    ) 0 [1,2,3,4,5]
```

We can materialize the Stream as a List alongside the return value of the function which produces it with an ability handler:

```
> Stream.toListWithResult! emitRunningTotal
  ⧩
  ([1, 3, 5, 7, 9], 5)
```

## Source

### Created by

- @rlmark