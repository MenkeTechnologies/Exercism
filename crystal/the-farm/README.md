# the-farm

Welcome to the-farm on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

In the ideal world, everything works perfectly.
But in the real world, things can go wrong, and how we handle these situations matters to ensure that our software is robust and reliable.
Exceptions are a crucial concept in programming that allows us to handle errors and unexpected situations gracefully.

Raising an error, if not handled, halts the program and throws an error message.
In most cases, you don't want your program to halt when an error occurs, instead you want to handle the error and continue running the program.

## Raising an exception

In Crystal, exceptions are raised using the `raise` keyword and can either be given a `String` or an `Exception` object.
If unhandled, the program will halt and print the error message.

```crystal
raise "This is an error"
```

There are several built-in exceptions in Crystal, like `ArgumentError`, `IndexError`, `KeyError`, `IOError`, `SystemCallError`, `TypeError`, `ZeroDivisionError` and many more.
These require you to pass a message to the exception.

```crystal
raise ArgumentError.new("This is an argument error")
```

## [Handling exceptions][[exception-handling]]

We wouldn't want our program to crash when an exception is raised.
Therefore, when we know a piece of code is error prone, we can wrap it in a `begin` block and rescue the exception with a `rescue` block.
The `begin` block marks the beginning of the code that might raise an exception, and the `rescue` block handles the exception.

```crystal
begin
 raise "This is an error"
rescue
 puts "An error occurred!"
end
```

The `rescue` block can also be specified with a variable to get the exception object.

```crystal
begin
 raise "This is an error"
rescue ex
 puts "An error occurred: #{ex.message}"
end
```

The `rescue` block can also be specified with a specific exception type only to catch that exception.

```crystal
begin
 raise ArgumentError.new("This is an argument error")
rescue ArgumentError
 puts "An argument error occurred!"
end

# or

begin
 raise ArgumentError.new("This is an argument error")
rescue ex : ArgumentError
 puts "An argument error occurred: #{ex.message}"
end
```

Multiple `rescue` blocks can be used to handle different types of exceptions.
In the example below, the first `rescue` block will catch an `ArgumentError`, and the second `rescue` block will catch any other exception.

```crystal
begin
 raise ArgumentError.new("This is an argument error")
rescue ArgumentError
 puts "An argument error occurred!"
rescue
 puts "An error occurred!"
end
```

The `begin` block can also have an `else` block, which is executed if no exception is raised.

```crystal
begin
 puts "No error occurred"
rescue
 puts "An error occurred!"
else
 puts "No error occurred"
end
```

Lastly, there is an `ensure` block that is always executed, regardless of whether an exception was raised.

```crystal
begin
 raise "This is an error"
rescue
 puts "An error occurred!"
ensure
 puts "This is always executed"
end
```

## Method convention

Some methods have two versions, one with `!` and the other without.
This can mean two different things.
One is that the method mutates the object, and the other is that the method can raise an exception.

But there is also another convention around ending a method with `?` mentioned in the boolean concept.
Some methods raise an exception by default but also have a version ending with `?` which returns `nil` instead of raising an exception.

This is ideal when you want to avoid an error being raised. 
This can benefit performance since it doesn't have to create a stack trace and, if set up correctly, could make the code safer.

## Custom exceptions

You can also create your own exceptions by inheriting from the [`Exception`][exception] class.
In doing so, you can optionally override the `initialize` method to set the exception message.
This can be done by assigning an instance variable named `@message` with the message.

```crystal
class MyException < Exception
 def initialize
   @message = "This is my exception"
 end
end

raise MyException.new
```

[exception-handling]: https://crystal-lang.org/reference/syntax_and_semantics/exception_handling.html
[exception]: https://crystal-lang.org/api/Exception.html

## Instructions

The day you waited so long finally came and you are now the proud owner of a beautiful farm in the Alps.

You still do not like waking up too early in the morning to feed your cows. 
Because you are an excellent engineer, you build a food dispenser, the `FEED-M-ALL`.

The last thing required in order to finish your project, is a piece of code that calculates the amount of fodder that each cow should get.
It is important that each cow receives the same amount, you need to avoid conflicts.
Cows are very sensitive.

Luckily, you don't need to work out all the formulas for calculating fodder amounts yourself.
You use some mysterious external library that you found on the internet.
It is supposed to result in the happiest cows.
The library exposes a class that fulfils the following interface.
You will rely on this in the code you write yourself.

```crystal
class FodderCalculator
  def fodder_amount! : Number 
  end

  def fattening_factor! : Number
  end
end
```

As you work on your code, you will improve the error handling to make it more robust and easier to debug later on when you use it in your daily farm life.

## 1. Divide the food evenly

First of all, you focus on writing the code that is needed to calculate the amount of fodder per cow.

Implement a method `TheFarm.divide_food` that accepts a `FodderCalculator` object and a number of cows as an integer as arguments.
*For this task, you assume the number of cows passed in is always greater than zero.*
The method should return the amount of food per cow.

To make the calculation, you first need to retrieve the total amount of fodder for all the cows.
This is done by calling the `fodder_amount!` method and passing the number of cows.
Additionally, you need a factor that this amount needs to be multiplied with.
You get this factor via calling the `fattening_factor!` method.
With these two values and the number of cows, you can now calculate the amount of food per cow (as a `float64`).

If one of the methods you call returns an error, the execution should stop and return `0`.

```crystal
fodder_calculator = FodderCalculator.new(50, 1.5)
TheFarm.divide_food(fodder_calculator, 5)
# => 15.0

fodder_calculator = FodderCalculator.new(50, nil)
TheFarm.divide_food(fodder_calculator, 5)
# => 0
```

## 2. Check the number of cows

While working on the first task above, you realized that the external library you use is not as high-quality as you thought it would be.
For example, it cannot properly handle invalid inputs.
You want to work around this limitation by adding a check for the input value in your own code.

Write a function `TheFarm.validate_input_and_divide_food` that has the same signature as `TheFarm.divide_food` above.

- If the number of cows passed in is greater than 0, the function should call `TheFarm.divide_food` and return the results of that call.
- If the number of cows is 0 or less, the function should raise an error with message `"invalid number of cows"`.

```crystal
TheFarm.validate_input_and_divide_food(fodderCalculator, 5)
# => 15

TheFarm.validate_input_and_divide_food(fodderCalculator, -2)
# Error: invalid number of cows
```

## 3. Improve the error handling

Checking the number of cows before passing it along was a good move but you are not quite happy with the unspecific error message.
You decide to do better by creating a custom error class called `InvalidCowsError`.

The custom error should hold the number of cows (`Int32`) and a custom message (`String`) and the `Expection` method should serialize the data in the following format:
```txt
{number of cows} cows are invalid: {custom message}
```

Equipped with your custom error, implement a function `TheFarm.validate_number_of_cows` that accepts the number of cows as an integer and returns an error (or nil).

- If the number of cows is less than 0, the function returns an `InvalidCowsError` with the custom message set to `"there are no negative cows"`.
- If the number of cows is 0, the function returns an `InvalidCowsError` with the custom message set to `"no cows don't need food"`.
- Otherwise, the function returns `nil` to indicate that the validation was successful.

```crystal
TheFarm.validate_number_of_cows(5)
# => nil

TheFarm.validate_number_of_cows(-5)
# => InvalidCowsError: -5 cows are invalid: there are no negative cows
```

After the hard work of setting up this validation function, you notice it is already evening and you leave your desk to enjoy the sunset over the mountains.
You leave the task of actually adding the new validation function to your code for another day.

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus