let _rebase = (input_base, xs, output_base) => {
  let rec digits = (b, n) =>
    switch (n) {
        | 0 => []
        | _ => List.append(digits(b, n / b), [n mod b])
        };
  xs |> Array.of_list |> Js.Array.reduce((acc, n) => acc * input_base + n, 0) |> digits(output_base) |> (x => Some(x));
};

let rebase = (input_base, xs, output_base) => {
  let isNonPositiveBase = b => b <= 0;
  let isAllZero = ys => ys |> List.filter(x => x == 0) |> List.length |> (x => x == List.length(ys));
  let hasNegativeDigits = ys => ys |> List.filter(x => x < 0) |> List.length |> (x => x > 0);
  let hasInvalidPositiveDigits = ys => ys |> List.filter(x => x >= input_base) |> List.length |> (x => x > 0);
  switch (xs) {
    | ys when ys == [] || isNonPositiveBase(output_base)  => None
    | ys when isAllZero(ys) || hasNegativeDigits(ys) || hasInvalidPositiveDigits(ys)  => None
    | _ => _rebase(input_base, xs, output_base)
    };
};
