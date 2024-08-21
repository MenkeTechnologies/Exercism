# Hints

## General

- To create the getter and setter methods you should use the `getter`, `setter` and `property` macros.

## 1. Create an initial state for the weighing machine

- To initialize the weighing machine you should use the `initialize` method.
- The method should take two arguments, `precision` and `metric`, which should be an `Int32` and `Bool`, respectively.
  These should be used to set the instance variables `@precision` and `@metric`.
- The instance variable `@weight` should be set to `0.0`.

## 2. Allow the weighing machine to have a precision

- The `getter` macro allows you to define a method that returns the value of an instance variable.

## 3. Allow the weight to be set on the weighing machine

- The `property` macro allows you to define a method that gets and sets the value of an instance variable.

## 4. Allow the machine to be switch between metric and imperial units

- The `setter` macro allows you to define a method that sets the value of an instance variable.