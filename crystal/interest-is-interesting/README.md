# Interest is Interesting

Welcome to Interest is Interesting on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

A loop is a control structure that allows code to be executed repeatedly based on a given condition.

## While Loops

A while loop is a control structure that allows code to be executed repeatedly based on a given condition.
The code within a while loop will continue executing while the condition evaluates truthy.
While loops are often used when the number of iterations is unknown beforehand, they can be used in any situation where a loop is needed.

The condition is evaluated before the code within the loop is executed, which means that if the condition is false, the code within the loop will never be executed.

```crystal
i = 0
while i < 3
  puts i
  i += 1
end

# Output:
# 0
# 1
# 2
```

When wanting to iterate over a string, you can loop over the length of the string.

```crystal
str = "Hello"
i = 0
while i < str.size
  puts str[i]
  i += 1
end

# Output:
# H
# e
# l
# l
# o
```

## Until Loops

Until loops work the same as while loops, except that the code within the loop will continue to execute until the condition evaluates to truthy.
It is the same as the difference between `if` and `unless`.

```crystal
i = 0
until i == 3
  puts i
  i += 1
end
```

### Infinite loops

A common error with while loops is entering an "infinite loop," which never exits.
An infinite loop can be caused by a condition _never_ evaluates to truthy or falsey.
This is often due to programmer error; for example, forgetting to increment the loop variable.
But sometimes, an infinite loop is the clearest way to implement the logic of the program.
Or it is vital to loop forever; for example, an HTTP server waits for an incoming connection, handles it, and then waits for the next connection.

## Break

The `break` keyword can be used to exit a loop early.
This can be convenient when you want to exit a loop early under certain conditions.

```crystal
i = 0
while i <= 3
  puts i
  i += 1
  if i == 2
    break
  end
end

# Output:
# 0
# 1
```

## Next

The `next` keyword can be used to skip to the next iteration of a loop.
This can be convenient when you want to skip specific iterations of a loop.

```crystal
i = 0
while i <= 3
  i += 1
  if i == 2
    next
  end
  puts i
end

# Output:
# 1
# 3
```

## Types under looping

The type of the variable can be different under looping.
In the following example, the type of `a` is `Int32 | String` because it can be `Int32` or `String` under the first part of the loop.
The variable `a` will only carry the type `Int32 | String` in the first part of the loop since when the loop starts, it holds `Int32`, and in the second iteration, it holds a `String`.
This multiple-type system will be explained in detail later.
But since we are sure that the second part of the loop will only hold `String`, the type of `a' is `String` under the second part of the loop.
At runtime, it will never simultaneously hold `Int32` and `String`.

```crystal
i = 0
a = 4
while i < 3
  p typeof(a)
  # => Int32 | String
  a = "4"
  p typeof(a)
  # => String
  i += 1
end
```

In Crystal, the last expression in a method returns its value.
However, sometimes you need to return a value before the last expression.
For this, you can use the `return` keyword, which will return the value of the following expression.
Code written after a `return` keyword will not be executed.

```crystal
def speed_limit(road_number)
    if road_number == 1
        return 50
        puts "This will not be executed"
    elsif road_number == 2
        return 80
        puts "This will not be executed"
    end
    100
end

p speed_limit(1) # => 50
p speed_limit(2) # => 80
p speed_limit(3) # => 100
```

~~~~exercism/note
The `return` keyword should be omitted when the last expression in a method is the value that should be returned.
~~~~

[while]: https://crystal-lang.org/reference/latest/syntax_and_semantics/while.html
[until]: https://crystal-lang.org/reference/latest/syntax_and_semantics/until.html
[break]: https://crystal-lang.org/reference/latest/syntax_and_semantics/break.html
[next]: https://crystal-lang.org/reference/latest/syntax_and_semantics/next.html

## Instructions

In this exercise you'll be working with savings accounts.
Each year, the balance of your savings account is updated based on its interest rate.
The interest rate your bank gives you depends on the amount of money in your account (its balance):

- 3.213% for a negative balance (balance gets more negative).
- 0.5% for a positive balance less than `1000` dollars.
- 1.621% for a positive balance greater than or equal to `1000` dollars and less than `5000` dollars.
- 2.475% for a positive balance greater than or equal to `5000` dollars.

You have four tasks, each of which will deal your balance and its interest rate.

## 1. Calculate the interest rate

Implement the method, `SavingsAccount.interest_rate()` that takes a balance as an argument.
The method should return the interest rate for the given balance.

```Crystal
SavingsAccount.interest_rate(200.75)
# => 0.5
```

## 2. Calculate the interest

Implement the method, `SavingsAccount.interest()` that takes a balance as an argument.
The method should return the interest for the given balance.

```Crystal
SavingsAccount.interest(200.75)
# => 1.00375
```

## 3. Calculate the annual balance update

Implement the method, `SavingsAccount.annual_balance_update()` that takes a balance as an argument.
The method should return the balance after one year.

```Crystal
SavingsAccount.annual_balance_update(200.75)
# => 201.75375
```

## 4. Calculate the years before reaching the desired balance

Implement the method, `SavingsAccount.years_before_desired_balance()` that takes a balance and a target balance as arguments.
The method should return the number of years it would take to reach the target balance.

```Crystal
balance = 200.75
target_balance = 214.88
SavingsAccount.years_before_desired_balance(balance, target_balance)
# => 14
```

~~~~exercism/note
When applying simple interest to a principal balance, the balance is multiplied by the interest rate and the product of the two is the interest amount.

Compound interest on the other hand is done by applying interest on a recurring basis.
On each application the interest amount is computed and added to the principal balance so that subsequent interest calculations are subject to a greater principal balance.
~~~~

## Source

### Created by

- @meatball133

### Contributed to by

- @glennj