["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"] as $dict
| .colors[:2]
| map(. as $col | $dict | index($col))
| join("")
| tonumber
