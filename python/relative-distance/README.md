# Relative Distance

Welcome to Relative Distance on Exercism's Python Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

You've been hired to develop **Noble Knots**, the hottest new dating app for nobility!
With centuries of royal intermarriage, things have gotten… _complicated_.
To avoid any _oops-we're-twins_ situations, your job is to build a system that checks how closely two people are related.

Noble Knots is inspired by Iceland's "[Islendinga-App][islendiga-app]," which is backed up by a database that traces all known family connections between Icelanders from the time of the settlement of Iceland.
Your algorithm will determine the **degree of separation** between two individuals in the royal family tree.

Will your app help crown a perfect match?

[islendiga-app]: https://web.archive.org/web/20250816223614/http://www.islendingaapp.is/information-in-english/

## Instructions

Your task is to determine the degree of separation between two individuals in a family tree.
This is similar to the pop culture idea that every Hollywood actor is [within six degrees of Kevin Bacon][six-bacons].

- You will be given an input, with all parent names and their children.
- Each name is unique, a child _can_ have one or two parents.
- The degree of separation is defined as the shortest number of connections from one person to another.
- If two individuals are not connected, return a value that represents "no known relationship."
  Please see the test cases for the actual implementation.

## Example

Given the following family tree:

```text
      ┌──────────┐            ┌──────────┐     ┌───────────┐
      │  Helena  │            │  Erdős   ├─────┤  Shusaku  │
      └───┬───┬──┘            └─────┬────┘     └────┬──────┘
      ┌───┘   └───────┐             └───────┬───────┘
┌─────┴────┐     ┌────┴───┐           ┌─────┴────┐
│   Isla   ├─────┤ Tariq  │           │   Kevin  │
└────┬─────┘     └────┬───┘           └──────────┘
     │                │
┌────┴────┐      ┌────┴───┐
│   Uma   │      │ Morphy │
└─────────┘      └────────┘
```

The degree of separation between Tariq and Uma is 2 (Tariq → Isla → Uma).
There's no known relationship between Isla and Kevin, as there is no connection in the given data.
The degree of separation between Uma and Isla is 1.

~~~~exercism/note
Isla and Tariq are siblings and have a separation of 1.
Similarly, this implementation would report a separation of 2 from you to your father's brother.
~~~~

[six-bacons]: https://en.m.wikipedia.org/wiki/Six_Degrees_of_Kevin_Bacon

## Class-based solution

The tests for this exercise expect your solution to be implemented as a `RelativeDistance` class in Python.
Your `RelativeDistance` class should be initialized using `family_tree`, a dictionary where the keys are individuals and the values are lists of that individual's children.
You will also need to implement a `degree_of_separation` method which will return the degree of separation between `person_a` and `person_b` who are individuals in the family tree.

If you are unfamiliar with classes in Python, here is a brief overview of how to implement the `RelativeDistance` class:

A class is a blueprint for creating objects, bundling attributes (data) and methods (functionality) together.
In this exercise, you are given stubbed implementations for the `__init__` special method used to create an instance of the `RelativeDistance` class as well as the `degree_of_separation` method.
To access the `family_tree` data from within the `degree_of_separation` method, you will need to first assign it within the `__init__` method to an appropriate attribute on `self`, which represents the current instance of the `RelativeDistance` class.
Then you can add your logic to the `degree_of_separation` method to calculate the degree of separation between `person_a` and `person_b`.

## Exception messages

Sometimes it is necessary to [raise an exception](https://docs.python.org/3/tutorial/errors.html#raising-exceptions).
When you do this, you should always include a **meaningful error message** to indicate what the source of the error is.
This makes your code more readable and helps significantly with debugging.
For situations where you know that the error source will be a certain type, you can choose to raise one of the [built in error types](https://docs.python.org/3/library/exceptions.html#base-classes), but should still include a meaningful message.

This particular exercise requires that you use the [raise statement](https://docs.python.org/3/reference/simple_stmts.html#the-raise-statement) to "throw" multiple `ValueError`s.
In the first scenario, you will need to raise a `ValueError` when either one or both of the people passed to the `RelativeDistance.degree_of_separation` method are not present in the family tree.
If both people are present in the family tree, you will need to raise a `ValueError` when there is no valid connection between them as defined by the rules.
The tests will only pass if you both `raise` the expected `exception` type and include the expected message with it.

Please check the tests and their expected results carefully.

## Source

### Created by

- @BNAndras

### Based on

vaeng - https://github.com/exercism/problem-specifications/pull/2537