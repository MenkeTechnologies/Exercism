# Library of Luton

Welcome to Library of Luton on Exercism's Crystal Track.
If you need help running the tests or submitting your code, check out `HELP.md`.
If you get stuck on the exercise, check out `HINTS.md`, but try and solve it without using those first :)

## Introduction

`Char` is a data type in Crystal representing a 32-bit [Unicode][unicode] code point.
Their size makes them memory efficient and gives them specific properties that Strings doesn't have.
They are created using single quotes (`'`) and only allow one Unicode code point to be placed inside.

```crystal
'a' # => 'a'
'a'.class # => Char
```

It is quite common to work with Chars when working with Strings in Crystal since quite a few methods in the String class return Chars or take Chars as arguments.
For example, the [`String#[]`][index] method returns a Char, or the [`String#chars`][chars] method returns a collection of Chars.

## Incrementing / Decrementing

Due to char being a 32 Unicode point do they support incrementing and decrementing, this makes it so if you have `'a'` so can you get `'b'` by adding one.

```crystal
'a' + 5
# => 'f'

'z' - 25
# => 'a'
```

There is also a method called [`Char#succ`][succ], which returns the next char in the Unicode table, and [`Char#pred`][pred], which returns the previous char in the Unicode table.

```crystal
'a'.succ
# => 'b'

'z'.pred
# => 'y'
```

## concatenation

Since Chars is only meant to represent a 32-bit Unicode, two chars can't be concatenated.
Therefore, Chars can only be concatenated with Strings.

```Crystal
'a' + "bc"
# => "abc"

'a' + 'b'
# => error: expected argument #1 to 'Char#+' to be Int or String, not Char
```

## Properties methods

Crystal has a few methods for getting information about a Character, such as whether it is a number or a letter or whether it is uppercase or lowercase.
Here is a list of some of the methods, for a complete list see the [Char API][char-api]:

| Method                           | Description                                          |
| -------------------------------- | ---------------------------------------------------- |
| [`Char#number?`][number]         | Returns `true` if the Char is a number               |
| [`Char#letter?`][letter]         | Returns `true` if the Char is a letter               |
| [`Char#lowercase?`][lowercase]   | Returns `true` if the Char is lowercase              |
| [`Char#uppercase?`][uppercase]   | Returns `true` if the Char is uppercase              |
| [`Char#ascii?`][ascii]           | Returns `true` if the Char is an ASCII character     |
| [`Char#whitespace?`][whitespace] | Returns `true` if the Char is a whitespace character |

## Converting

### Converting between code points and Chars

Since Chars is a 32-bit Unicode point, can you convert between Chars and code points (Int).
This can be done using the [`Char#ord`][ord] method which will return the code point of the Char, or the [`Int#chr`][chr] method which will return the Char of the code point.

```crystal
'a'.ord
# => 97

97.chr
# => 'a'
```

### Converting between types

As with other data types, chars have a few methods for converting between types.
The most common one is the `Char#to_s` method, which converts the Char to a String. However, there is also the `Char#to_i` method, which converts the Char to an Int, and the `Char#to_f` method, which converts the Char to a Float.

```crystal
'a'.to_s
# => "a"

'4'.to_i
# => 4

'a'.to_i
# => Error: Invalid integer: a (ArgumentError)
```

[char-api]: https://crystal-lang.org/api/latest/Char.html
[succ]: https://crystal-lang.org/api/latest/Char.html#succ%3AChar-instance-method
[pred]: https://crystal-lang.org/api/latest/Char.html#pred%3AChar-instance-method
[index]: https://crystal-lang.org/api/latest/String.html#%5B%5D%28index%3AInt%29%3AChar-instance-method
[chars]: https://crystal-lang.org/api/latest/String.html#chars%3AArray%28Char%29-instance-method
[ord]: https://crystal-lang.org/api/latest/Char.html#ord%3AInt32-instance-method
[chr]: https://crystal-lang.org/api/latest/Int.html#chr%3AChar-instance-method
[number]: https://crystal-lang.org/api/latest/Char.html#number%3F%3ABool-instance-method
[letter]: https://crystal-lang.org/api/latest/Char.html#letter%3F%3ABool-instance-method
[lowercase]: https://crystal-lang.org/api/latest/Char.html#lowercase%3F%3ABool-instance-method
[uppercase]: https://crystal-lang.org/api/latest/Char.html#uppercase%3F%3ABool-instance-method
[ascii]: https://crystal-lang.org/api/latest/Char.html#ascii%3F%3ABool-instance-method
[unicode]: https://en.wikipedia.org/wiki/Unicode
[whitespace]: https://crystal-lang.org/api/latest/Char.html#whitespace%3F%3ABool-instance-method

## Instructions

The library of Luton is a large library with a large collection of literature, ranging from books to art.
The library has a section where they study literature and add books to the computer system.

Certain parts aim to be automated and you are asked to help them.
This includes helping things from automating the inscribe process forms to helping decrypt texts.

## 1. Get first letter of title

A library's books are supposed to be easy to find, so they are sorted by the first letter of the title.

Implement the `Library.first_letter` method, which takes an argument `title`, which holds the book's title.
The method should return the first letter of the title.

```Crystal
Library.first_letter("Mystery of the Crystal Skull")
# => 'M'
```

## 2. Get authors initials

The library has a lot of books written by different authors.
Authors are often referred to by their initials, so the library requested a system that gives the initials of the author by inputting the author's first name and last name.
The initials should be formatted as such: `{first_letter_of_first_name}.{first_letter_of_last_name}`

Implement the `Library.initials` method that takes two arguments `first_name` and `last_name` which hold the first name and last name of the author.
The method should return the author's initials.

```Crystal
Library.initials("William", "Shakespeare")
# => "W.S"
```

## 3. Decrypt letter

Some literature is encrypted and the library has a lot of encrypted texts.
The library would like a new decryption system for special encryption.

The encryption works by taking the letter and replacing it with the letter preceding it in the alphabet.
For example `a` becomes `z`, `b` becomes `a`, `c` becomes `b`, and so on.

The library would like it to be able to decrypt both uppercase and lowercase letters and keep the same case as the original letter.

Implement the `Library.decrypt_character` method, which takes an argument `character`, which holds the letter to decrypt.
The method should return the decrypted letter.

```Crystal
Library.decrypt_character('a')
# => 'z'
```

## 4. Decrypt text

The library would also like to decrypt a whole text, with the encryption, that takes the preceding letter in the alphabet.

The decrypter should only decrypt letters and leave all other characters as they are.

Implement the `Library.decrypt_text` method, which takes an argument `text`, which holds the text to decrypt.
The method should return the decrypted text.

```Crystal
Library.decrypt_text("Ifmmp Xpsme!")
# => "Hello World!"
```

## Source

### Created by

- @meatball133

### Contributed to by

- @erikschierboom