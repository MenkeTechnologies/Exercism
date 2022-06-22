type color =
  | Black
  | Brown
  | Red
  | Orange
  | Yellow
  | Green
  | Blue
  | Violet
  | Grey
  | White;

let colors = [|
  Black,
  Brown,
  Red,
  Orange,
  Yellow,
  Green,
  Blue,
  Violet,
  Grey,
  White,
|];

let colorCode = color => {
  colors |> Js.Array.findIndex(c => c === color);
};
