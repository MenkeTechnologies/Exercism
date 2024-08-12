# Hints

## 1. Define rank & file range

- You need to define two [constant][constants] that should hold a [range][range] of ranks and files.
- The ranks should be an [integer][integers] range from 1 to 8.
- The files should be a [character][characters] range from 'A' to 'H'.
- The constant needs to be defined in the `Chess` [module][module].

## 2. Check if square is valid

- You need to check if a value is within a range.
- There is [a method][include] that can be used to check if a value is within a range. 

## 3. Get player's nickname

- You can get a substring by using the [range operator][range-operator] as index.
- There is a [method][upcase] that can be used to upcase a string.

## 4. Create move message

- You can index the square string to get the rank and file.
- You can use already defined methods to get the nickname of the player, and to check if the move is valid.

[range]: https://crystal-lang.org/reference/latest/syntax_and_semantics/literals/range.html
[constants]: https://crystal-lang.org/reference/syntax_and_semantics/constants.html
[integers]: https://crystal-lang.org/reference/latest/syntax_and_semantics/literals/integers.html
[characters]: https://crystal-lang.org/reference/latest/syntax_and_semantics/literals/characters.html
[module]: https://crystal-lang.org/reference/syntax_and_semantics/modules.html
[include]: https://crystal-lang.org/api/latest/Range.html#includes%3F%28value%29-instance-method
[range-operator]: https://crystal-lang.org/reference/latest/syntax_and_semantics/literals/range.html
[upcase]: https://crystal-lang.org/api/latest/String.html#upcase%28options%3AUnicode%3A%3ACaseOptions%3D%3Anone%29%3AString-instance-method