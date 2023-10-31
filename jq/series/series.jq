if .sliceLength < 0 then "slice length cannot be negative" | halt_error
elif .sliceLength == 0 then "slice length cannot be zero" | halt_error
elif (.series | length) == 0 then "series cannot be empty" | halt_error
elif (.series | length) < .sliceLength then "slice length cannot be greater than series length" | halt_error
else [range(0; (.series | length) + 1 - .sliceLength) as $start | .series[$start:$start + .sliceLength]] 
end
