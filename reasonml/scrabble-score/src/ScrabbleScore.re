open Js.String
open Js.Array

let score = s => {
  s |> toLowerCase |> split("") |> map(c =>
       switch (c) {
       | "a" | "e" | "i" | "o" | "u" | "l" | "n" | "r" | "s" | "t" => 1
       | "d" | "g" => 2
       | "b" | "c" | "m" | "p" => 3
       | "f" | "h" | "v" | "w" | "y" => 4
       | "k" => 5
       | "j" | "x" => 8
       | "q" | "z" => 10
       | _ => 0
       }
     ) |> reduce((acc, score) => acc + score, 0);
};
