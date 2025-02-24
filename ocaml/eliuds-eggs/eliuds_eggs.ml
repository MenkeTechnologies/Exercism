open Int

let egg_count n =
  let rec aux dup cnt =
   if dup > 0
   then aux (shift_right dup 1) (cnt + logand dup 1)
   else cnt
  in aux n 0
