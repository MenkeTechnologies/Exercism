fun accumulate (f, xs) =
  if null xs
  then []
  else f (hd xs) :: accumulate(f, tl xs)
