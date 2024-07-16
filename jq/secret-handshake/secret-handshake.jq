def bit_is_on($n; $offset):
  ($n / ($offset | floor)) % 2 > 0
;

.number as $num
| []
| if bit_is_on($num; 1) then . + ["wink"] end
| if bit_is_on($num; 2) then . + ["double blink"] end
| if bit_is_on($num; 4) then . + ["close your eyes"] end
| if bit_is_on($num; 8) then . + ["jump"] end
| if bit_is_on($num; 16) then reverse end
