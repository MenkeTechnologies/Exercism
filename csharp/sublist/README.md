# Sublist

Welcome to Sublist on Exercism's C# Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Given two lists determine if the first list is contained within the second
list, if the second list is contained within the first list, if both lists are
contained within each other or if none of these are true.

Specifically, a list A is a sublist of list B if by dropping 0 or more elements
from the front of B and 0 or more elements from the back of B you get a list
that's completely equal to A.

Examples:

 * A = [1, 2, 3], B = [1, 2, 3, 4, 5], A is a sublist of B
 * A = [3, 4, 5], B = [1, 2, 3, 4, 5], A is a sublist of B
 * A = [3, 4], B = [1, 2, 3, 4, 5], A is a sublist of B
 * A = [1, 2, 3], B = [1, 2, 3], A is equal to B
 * A = [1, 2, 3, 4, 5], B = [2, 3, 4], A is a superlist of B
 * A = [1, 2, 4], B = [1, 2, 3, 4, 5], A is not a superlist of, sublist of or equal to B

To be able to compare data, the IComparable interface is used.
For more information, see [this page](https://docs.microsoft.com/en-us/dotnet/api/system.icomparable?view=net-5.0).

## Source

### Created by

- @ErikSchierboom

### Contributed to by

- @j2jensen
- @robkeim
- @ShamilS
- @wolf99