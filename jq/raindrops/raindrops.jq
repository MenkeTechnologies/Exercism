.
| .number as $n
| [[3, "Pling"], [5, "Plang"], [7, "Plong"]]
| map(
    if ($n % first == 0) then last else empty end
  )
| add
| . // $n
