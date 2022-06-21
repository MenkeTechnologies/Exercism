let roman_list = [
  (1000, "M");
  (900, "CM");
  (500, "D");
  (400, "CD");
  (100, "C");
  (90, "XC");
  (50, "L");
  (40, "XL");
  (10, "X");
  (9, "IX");
  (5, "V");
  (4, "IV");
  (1, "I")]

let to_roman n =
  let rec build acc num = function
    | [] -> acc
    | (k,v)::tl as t -> if num >= k then
        build (acc ^ v) (num - k) t
      else
        build acc num tl
  in
  build "" n roman_list
