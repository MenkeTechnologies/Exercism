# Password Lock

Welcome to Password Lock on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

Crystal allows for a variable to consist of multiple types.
This is called a [union type][union-type].
In Crystal it is quite common for a union type to be inferred by the compiler.

~~~~exercism/note
A union type, even if it consists of multiple types, is still a single type at runtime.
Meaning a union type is built of `String` and `Int32` so it will not be both at the same time.
Instead, it will be either a `String` or an `Int32`.
~~~~

A union type is declared by separating the types with a pipe (`|`).
They are often placed in parenthesis, but it is not required.
The most common union type is `(T | Nil)` where `T` is a type, which can occur in methods that can return `Nil`.
This is also known as a variable being **nilable**.

```crystal
foo : String = "Hello"
foo = nil # Error: type must be String, not (String | Nil)

foo : (String | Nil) = "Hello"
foo = nil
```

It is not limited to just 2 types, but can be as many as you want.

```crystal
foo : (String | Int32 | Nil | Float64) = "Hello"
foo = 1
foo = nil
foo = 1.0
```

## `typeof` vs `Object#class`

There are 2 ways to get the type of a variable.
Either by using [`typeof`][typeof] or by using [`Object#class`][Object#class].
The difference between them is that `typeof` will return a variable's type at compile time, while `Object#class` will return the type at runtime.
Meaning if you want to for example see if a variable is a union type, then `Object#class` will not be able to tell you that as it will only return the type at runtime, which is a single type.

```crystal
foo = 0 == 0 ? "a" : 1
typeof(foo) # => (String | Int32)
foo.class # => String
```

## Operations on union types

As a union type is a single type at runtime, all the normal operations work on it.
But when compiling the code the compiler will not know which type it is.
Thereby the code has to be setup in such a way that it can only be one of the types when wanting to use the type-specific operations.

```crystal
foo : (String | Int32) = "Hello"
foo.downcase # Error: undefined method 'downcase' for (String | Int32)
```

Crystal does have a special method for union types: the `is_a?` method, which takes a type as an argument and returns a boolean.
The `nil?` method is a shortcut for `is_a?(Nil)`.
Putting the `is_a?` method in an control expression will make the compiler know which type it is, and thereby guarantee that it is that type.
And for an else branch it will be guaranteed that it is not that type.

```crystal
foo : (String | Int32) = "Hello"
if foo.is_a?(String)
  typeof(foo)  # => String
  foo.downcase # => "hello"
end
```

This `is_a?` is not limited to having just a single type as an argument, but can have a union type as an argument.
And can also be combined with `&&` to allow for multiple types.

~~~~exercism/note
The `is_a?` method when using it in conjunction with a control expression can't be an instance variable or class variable.
Instead these have to be assigned to a local variable first.
~~~~

## as

One way of making a union type into a single type is by making it so that a branch can only be entered if the type is a specific type.
Another approach is to use the [`as`][as] method.
This will make an union type into a single type by doing a runtime check.
If the type is not the expected type, it will raise an exception.

```crystal
foo : String | Int32 = "Hello"
foo.as(String).downcase # => "hello"

foo.as(Int32) # Error: can't cast String to Int32
```

~~~~exercism/caution
This approach is only meant for when you are sure that the type is the expected type or if you want to raise an exception when it is not.

Using this approach with an improper setup can lead to unexpected behavior.
~~~~

## as?

[`as?`][as?] works very similarly to `as`, but instead of raising an exception if the type is not the expected type, it will return `nil`.
This means that it will return a union type of the expected type and `Nil`.

```crystal
foo : (String | Int32) = "Hello"
foo.as?(String).downcase # => "hello"

foo.as?(Int32) # => nil
```

## Nilable shorthand

Nilable means that a variable can be either a type or `Nil`.
This can be written as `(T | Nil)`.
But since Nilable types are rather common, there is a shorthand for it: `T?`.

```crystal
foo : (String | Nil) = "Hello"
foo = nil

foo : String? = "Hello"
foo = nil
```

[union-type]: https://crystal-lang.org/reference/latest/syntax_and_semantics/union_types.html
[typeof]: https://crystal-lang.org/reference/syntax_and_semantics/typeof.html
[Object#class]: https://crystal-lang.org/api/latest/Object.html#class-instance-method
[is_a?]: https://crystal-lang.org/reference/latest/syntax_and_semantics/is_a.html
[as]: https://crystal-lang.org/reference/latest/syntax_and_semantics/as.html
[as?]: https://crystal-lang.org/reference/latest/syntax_and_semantics/as_question.html

## Instructions

The company you work for is just about to launch their brand new smartphone, called the **Smarty 5**, it features a brand new camera system, a new design, and a revolutionary new processor running on a new operating system called **smartyOS**.

The new processor has the power to be able to do more secure password handling than ever before, and the company has decided to use this to its advantage.
They have asked you to implement a password lock system for the phone that will allow the user to set a password and then check if a given password is correct.

~~~~exercism/caution
The password system practiced in this exercise is not secure and is only used for educational purposes.
It should **NOT** be used in any real-world applications.
~~~~

## 1. Set a password

The phone has the possibility of using multiple different types of passwords: everything from a simple digit password to a more secure alphanumeric password and even a password that stores their fingerprint.

These different types of passwords use different types: the digit password uses an `Int32`, the alphanumeric password uses a `String`, and the fingerprint password uses a `Float64`.

Implement the class `PasswordLock` with an initializer that takes any of the three types of passwords as an argument and stores it in an instance variable called `@password`.

```crystal
password_lock = PasswordLock.new(1234)
# => #<PasswordLock:0x7f8e1b8c0b80 @password=1234>
```

## 2. Encrypt the password

The company has decided that they want to encrypt the password so that it is not stored in plain text and has asked you to implement a method that encrypts the password.

Each password type has its own unique way of being encrypted:

- `Int32` password: The password is divided by 2 and rounded to the nearest integer.
- `String` password: The password is reversed.
- `Float64` password: The password is multiplied by 4.

Implement an instance method called `encrypt` that takes no arguments and modifies the `@password` instance variable so that it is encrypted.

```crystal
password_lock = PasswordLock.new(1234)
# => #<PasswordLock:0x7f8e1b8c0b80 @password=1234>

password_lock.encrypt
# => #<PasswordLock:0x7f8e1b8c0b80 @password=617>
```

## 3. Check if a password is correct

The company has also asked you to implement a method that checks if a given password is correct.

They want the method to return `nil` if the password is incorrect and `"Unlocked"` if the password is correct.

Implement an instance method called `unlock?` that takes the password to check as an argument.
The method should return `nil` if the password is incorrect and `"Unlocked"` if the password is correct.

```crystal
password_lock = PasswordLock.new(1234)
password_lock.encrypt
password_lock.unlock?(1234)
# => "Unlocked"
```

## Source

### Created by

- @meatball133

### Contributed to by

- @ryanplusplus