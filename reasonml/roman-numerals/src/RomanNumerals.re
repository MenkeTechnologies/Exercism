let roman_arabic = [
  ("M", 1000),
  ("CM", 900),
  ("D", 500),
  ("CD", 400),
  ("C", 100),
  ("XC", 90),
  ("L", 50),
  ("XL", 40),
  ("X", 10),
  ("IX", 9),
  ("V", 5),
  ("IV", 4),
  ("I", 1)
]

let repeat = (str, n) =>
  Array.make(n, str) |> Array.to_list |> String.concat("")

let rec getResult = (dict, n) =>
  switch (dict) {
   | [] => ""
   | [(roman, arabic), ...rest] => repeat(roman, n / arabic)
    ++ getResult(rest, n mod arabic)
  }

let toRoman = getResult(roman_arabic)
