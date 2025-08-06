let rec aux = (n, cnt) =>
    if (n < 1) {
      Error("Only positive integers are allowed");
    } else if (n == 1) {
      Ok(cnt);
    } else {
      aux(n mod 2 == 0 ? n / 2 : n * 3 + 1, cnt + 1);
};

let collatzConjecture = n => aux(n, 0);
