let validate = (number: int) => {

  let digits =
    string_of_int(number)
    |> Js.String.split("")
    |> Array.map(int_of_string)
    |> Array.to_list;

  let len = List.length(digits);

    List.fold_left(
      (acc, n) => acc + int_of_float(float_of_int(n) ** float_of_int(len)),
      0,
      digits,
    ) == number;
};

