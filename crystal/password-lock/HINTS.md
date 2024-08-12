# Hints

## General

- For a name to be able to have multiple different types, you need to use a [union type][union-type].
- For an instance variable to be used in an [`if var.is_a?(Type)`][if-is-a] control expression, it first needs to be assigned to a local variable.

## 1. Set a password

- You need to define a class with the name `PasswordLock`.
- You need to define an initialize method that takes either a `String`, `Int32`, or `Float64` as an argument.
- You need to define an [instance variable][instance-variable] `@password` that is set to the argument passed to the constructor.

## 2. Encrypt the password

- Define an instance method called `encrypt`.
- The method should modify the [instance variable][instance-variable] `@password` to be encrypted.
- To make it so a specific branch is only able to be executed if the variable is a specific type, you need to use the [`is_a?`][is-a] method in a control expression.

## 3. Check if a password is correct

- You can use already-defined methods to encrypt the given password attempt.

[if-is-a]: https://crystal-lang.org/reference/latest/syntax_and_semantics/if_varis_a.html
[union-type]: https://crystal-lang.org/reference/latest/syntax_and_semantics/union_types.html
[is-a]: https://crystal-lang.org/reference/latest/syntax_and_semantics/is_a.html
[instance-variable]: https://crystal-lang.org/reference/latest/syntax_and_semantics/methods_and_instance_variables.html