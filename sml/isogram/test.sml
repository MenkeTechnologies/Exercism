(* version 1.0.0 *)

use "testlib.sml";
use "isogram.sml";

infixr |>
fun x |> f = f x

val testsuite =
  describe "isogram" [
    test "empty string"
      (fn _ => isIsogram "" |> Expect.truthy),

    test "isogram with only lower case characters"
      (fn _ => isIsogram "isogram" |> Expect.truthy),

    test "word with one duplicated character"
      (fn _ => isIsogram "eleven" |> Expect.falsy),

    test "word with one duplicated character from the end of the alphabet"
      (fn _ => isIsogram "zzyzx" |> Expect.falsy),

    test "longest reported english isogram"
      (fn _ => isIsogram "subdermatoglyphic" |> Expect.truthy),

    test "word with duplicated character in mixed case"
      (fn _ => isIsogram "Alphabet" |> Expect.falsy),

    test "word with duplicated character in mixed case, lowercase first"
      (fn _ => isIsogram "alphAbet" |> Expect.falsy),

    test "hypothetical isogrammic word with hyphen"
      (fn _ => isIsogram "thumbscrew-japingly" |> Expect.truthy),

    test "hypothetical word with duplicated character following hyphen"
      (fn _ => isIsogram "thumbscrew-jappingly" |> Expect.falsy),

    test "isogram with duplicated hyphen"
      (fn _ => isIsogram "six-year-old" |> Expect.truthy),

    test "made-up name that is an isogram"
      (fn _ => isIsogram "Emily Jung Schwartzkopf" |> Expect.truthy),

    test "duplicated character in the middle"
      (fn _ => isIsogram "accentor" |> Expect.falsy),

    test "same first and last characters"
      (fn _ => isIsogram "angola" |> Expect.falsy),

    test "word with duplicated character and with two hyphens"
      (fn _ => isIsogram "up-to-date" |> Expect.falsy),

    test "single character"
      (fn _ => isIsogram "a" |> Expect.truthy),

    test "two same characters"
      (fn _ => isIsogram "aa" |> Expect.falsy),

    test "word with spaces only"
      (fn _ => isIsogram "   " |> Expect.truthy),

    test "isogram with digits and letters"
      (fn _ => isIsogram "abc123" |> Expect.truthy),

    test "word with all unique uppercase characters"
      (fn _ => isIsogram "DERMATOGLYPHICS" |> Expect.truthy),

    test "word with duplicated uppercase characters"
      (fn _ => isIsogram "MOOSE" |> Expect.falsy),

    test "word with multiple spaces"
      (fn _ => isIsogram "a b c d e" |> Expect.truthy),

    test "word with spaces and duplicate letters"
      (fn _ => isIsogram "a b c a" |> Expect.falsy),

    test "hyphen only"
      (fn _ => isIsogram "-" |> Expect.truthy),

    test "all 26 letters"
      (fn _ => isIsogram "abcdefghijklmnopqrstuvwxyz" |> Expect.truthy),

    test "all 26 letters plus one duplicate"
      (fn _ => isIsogram "abcdefghijklmnopqrstuvwxyza" |> Expect.falsy)
  ]

val _ = Test.run testsuite
