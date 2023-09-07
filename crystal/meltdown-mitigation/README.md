# Meltdown Mitigation

Welcome to Meltdown Mitigation on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Crystal has what is known as Control expressions, these are used to control the way the program will run and they take a truthy or falsey value.
There are operators that can be used to create truthy or falsey values, these are known as [equality and comparison operators][equality-and-comparison].

There are 2 main control expressions that are used to control which code will run and which will not.
Also known as which given branch will run.

Those 2 are: `if` and the `unless` expression.

## Comparison operators

Comparison operators are used to compare values and return a `true` or `false` value.
These operators require 2 values to be compared of the same type.
If the values are not of the same type then the compiler will throw an error.
Here is a list of the comparison operators and an example of when they give a `true` value:

| Method | Description           | Example |
| ------ | --------------------- | ------- |
| <      | less than             | 5 < 4   |
| <=     | less than or equal    | 4 <= 4  |
| >      | greater than          | 3 > 1   |
| >=     | greater than or equal | 2 >= 2  |

## Equality operators

Equality operators are similar to comparison operators but they are used to check if 2 values are equal or not equal.

The `==` operator is used to check if 2 values are equal, and that includes checking the type of the value.
If the values are the same then it will return `true` otherwise it will return `false`.
The `==` operator can compare any type of value with any other type of value.
The `!=` works the same way but it will return `true` if the values are not equal and `false` if they are equal.

## If statement

The [`if`][if] statement is used to check if a given condition is truthy or falsey.
If the condition is truthy then the code inside the if statement will run.
An `if` statement ends with the `end` keyword.

```crystal
if 1 == 1
  puts "1 is equal to 1"
end
# => 1 is equal to 1

if 1 > 2
  puts "1 is greater than 2"
end
# => no output
```

## Unless statement

The [`unless`][unless] statement works very similarly to the If statement but it will run the code inside the `unless` statement if the condition is falsey.

```crystal
unless 1 == 1
  puts "1 is not equal to 1"
end
# => no output

unless 1 > 2
  puts "1 is not greater than 2"
end
# => 1 is not greater than 2
```

## Else statement

The `else` statement can be used in conjunction with the if and unless statements.
The `else` statement will be executed if the `if` branch or the `unless` branch is not executed.

```crystal
if 1 == 1
  puts "1 is equal to 1"
else
  puts "1 is not equal to 1"
end
# => 1 is equal to 1

unless 1 < 2
  puts "1 is not greater than 2"
else
  puts "1 is greater than 2"
end
# => 1 is greater than 2
```

## "Cascading-if" statements

The `elsif` statement can be used in conjunction with the if statement.
The `elsif` statement will be executed if the if branch is not executed and the condition of the elsif statement is truthy.
Elsif statements can be chained together and the first truthy condition will be executed.
There can also be an else statement at the end of the if statement which will run if non of the earlier statement has been true.

```crystal
if 1 != 1
  puts "1 is equal to 1"
elsif 1 > 2
  puts "1 is greater than 2"
else
  puts "1 is not equal to 1 and 1 is not greater than 2"
end
# => 1 is greater than 2
```

## Types with conditionals

When assigning to different types then will the variable carry both of the types.
This is because the compiler doesn't know which branch will be executed.
This multiple assignment which is also known as a union will be explained in later concepts.
This can be seen in the following example:

```crystal
if 1 == 1
  a = 1
else
  a = "1"
end

typeof(a) # => Int32 | String
```

## Ternary Operator

Crystal has a ternary operator which is a single line if-else statement: `condition ? expression_if_truthy : expression_if_falsey`

```crystal
1 == 1 ? puts("1 is equal to 1") : puts("1 is not equal to 1")
# => 1 is equal to 1
```

[if]: https://crystal-lang.org/reference/latest/syntax_and_semantics/if.html
[unless]: https://crystal-lang.org/reference/latest/syntax_and_semantics/unless.html
[equality-and-comparison]: https://crystal-lang.org/reference/latest/syntax_and_semantics/operators.html#equality-and-comparison

## Instructions

In this exercise, we'll develop a simple control system for a nuclear reactor.

For a reactor to produce the power it must be in a state of _criticality_.
If the reactor is in a state less than criticality, it can become damaged.
If the reactor state goes beyond criticality, it can overload and result in a meltdown.
We want to mitigate the chances of meltdown and correctly manage reactor state.

The following three tasks are all related to writing code for maintaining ideal reactor state.

## 1. Check for criticality

The first thing a control system has to do is check if the reactor is balanced in criticality.
A reactor is said to be critical if it satisfies the following conditions:

- The temperature is less than 800 K.
- The number of neutrons emitted per second is greater than 500.
- The product of temperature and neutrons emitted per second is less than 500000.

Implement the method `Reactor.is_criticality_balanced` that takes `temperature` measured in kelvin and `neutrons_emitted` as parameters, and returns `true` if the criticality conditions are met, `false` if not.

```crystal
Reactor.is_criticality_balanced(750, 600)
# => true
```

## 2. Determine the Power output range

Once the reactor has started producing power its efficiency needs to be determined.
Efficiency can be grouped into 4 bands:

1. `green` -> efficiency of 80% or more,
2. `orange` -> efficiency of less than 80% but at least 60%,
3. `red` -> efficiency below 60%, but still 30% or more,
4. `black` -> less than 30% efficient.

The percentage value can be calculated as `(generated_power/theoretical_max_power)*100`
where `generated_power` = `voltage` \* `current`.
Note that the percentage value is usually not an integer number, so make sure to consider the
proper use of the `<` and `<=` comparisons.

Implement the method `Reactor.reactor_efficiency`, with three parameters: `voltage`, `current`, and `theoretical_max_power`.
This function should return the efficiency band of the reactor : "green", "orange", "red", or "black".

```crystal
Reactor.reactor_efficiency(200,50,15000)
# => "orange"
```

## 3. Fail Safe Mechanism

Your final task involves creating a fail-safe mechanism to avoid overload and meltdown.
This mechanism will determine if the reactor is below, at, or above the ideal criticality threshold.
Criticality can then be increased, decreased, or stopped by inserting (or removing) control rods into the reactor.

Implement the method called `Reactor.fail_safe()`, which takes 3 parameters: `temperature` measured in kelvin, `neutrons_produced_per_second`, and `threshold`, and outputs a status code for the reactor.

- If `temperature * neutrons_produced_per_second` < 90% of `threshold`, output a status code of "LOW"
  indicating that control rods must be removed to produce power.

- If `temperature * neutrons_produced_per_second` are within plus or minus 10% of the `threshold`
  the reactor is in _criticality_ and the status code of "NORMAL" should be output, indicating that the
  reactor is in optimum condition and control rods are in an ideal position.

- If `temperature * neutrons_produced_per_second` is not in the above-stated ranges, the reactor is
  going into meltdown and a status code of "DANGER" must be passed to immediately shut down the reactor.

```crystal
temperature = 1000
neutrons_produced_per_second = 30
threshold = 5000
Reactor.fail_safe(temperature, neutrons_produced_per_second, threshold)
# => "DANGER"
```

## Source

### Created by

- @meatball133

### Contributed to by

- @glennj