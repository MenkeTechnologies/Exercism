# Hints

## 1. Check if the food is correct

- You can use an [`if`][if] statement to check if the food is correct.

## 2. Check if the drink is poisoned

- There is [a method][downcase] to convert a string to lowercase.
- You can check if a string has a specific character by using [`String#includes?`][includes?].

## 3. Replace the drink

- You can use already implemented methods to check if the drink is poisoned.
- There is [an operator][or] that can be used to return the first truthy value.

[if]: https://crystal-lang.org/reference/latest/syntax_and_semantics/if.html
[downcase]: https://crystal-lang.org/api/latest/String.html#downcase%28options%3AUnicode%3A%3ACaseOptions%3D%3Anone%29%3AString-instance-method
[includes?]: https://crystal-lang.org/api/latest/String.html#includes%3F%28search%3AChar%7CString%29%3ABool-instance-method
[or]: https://crystal-lang.org/reference/latest/syntax_and_semantics/or.html