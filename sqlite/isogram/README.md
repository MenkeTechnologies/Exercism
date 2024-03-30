# Isogram

Welcome to Isogram on Exercism's SQLite Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Determine if a word or phrase is an isogram.

An isogram (also known as a "non-pattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

Examples of isograms:

- lumberjacks
- background
- downstream
- six-year-old

The word _isograms_, however, is not an isogram, because the s repeats.

You will be provided a table named "isogram".
The first column, "phrase", contains some text.
You need to determine if the phrase is an isogram.
Update the second column, "is_isogram", with an integer value:

* 1 if the phrase is an isogram,
* 0 if it is not.

~~~~exercism/note
SQLite comparison operations return boolean values as 0/1 numbers

```sh
$ sqlite3
sqlite> .mode table
sqlite> SELECT 1 < 2 AS "true", 1 > 2 AS "false";
+------+-------+
| true | false |
+------+-------+
| 1    | 0     |
+------+-------+
```
~~~~

## Source

### Created by

- @glennj

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Isogram