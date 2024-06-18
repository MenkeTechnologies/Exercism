if .span > (.digits | length) then
  "span must be smaller than string length" | halt_error
elif .digits | test("\\D") then
  "digits input must only contain digits" | halt_error
elif .span < 0 then
  "span must not be negative" | halt_error
end
| (.digits / "" | map(tonumber)) as $digits
| .span as $span
| reduce range($digits | length - $span + 1) as $i (
  0;
  [., reduce $digits[$i : $i+$span][] as $j (1; . * $j)]
  | max
)

