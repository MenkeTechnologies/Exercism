let rec aux = (lo, hi, numbers, target) => {
  let mid = (hi + lo) / 2;
  if (hi <= lo) {
    None;
  } else if (target == numbers[mid]) {
    Some(mid);
  } else if (target < numbers[mid]) {
    aux(lo, mid, numbers, target);
  } else {
    aux(mid + 1, hi, numbers, target);
  };
};

let find = (numbers, target) => aux(0, Array.length(numbers), numbers, target);
