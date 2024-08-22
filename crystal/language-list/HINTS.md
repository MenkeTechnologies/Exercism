# Hints

## General

- Use the built-in [array type][array].

## 1. Define a method to return an empty language array

- The function needs to return an empty array with the type `Array(String)`.
- The syntax to create an empty array is `[]`.
  The type can be specified using `of String`.

## 2. Define a method to add a language to the array

- An element can be appended to an array using `<<`.

## 3. Define a method to remove a language from the array

- Crystal [provides a method][pop] to remove the last item from an array.

## 4. Define a method to return the nth item in the array

- Crystal [provides a method][index] to get the item at a specific index in an array.

## 5. Define a method to parse a string of languages

- Crystal [provides a method][split] to convert a string into an array using a delimiter.

[array]: https://crystal-lang.org/reference/syntax_and_semantics/literals/array.html
[pop]: https://crystal-lang.org/api/Array.html#pop%3AT-instance-method
[index]: https://crystal-lang.org/api/Indexable.html#%5B%5D%28index%3AInt%29-instance-method
[split]: https://crystal-lang.org/api/String.html#split%28separator%3AString%2Climit%3Dnil%2C%2A%2Cremove_empty%3Dfalse%29%3AArray%28String%29-instance-method