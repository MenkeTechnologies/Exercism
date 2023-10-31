def cap9: if . > 9 then . - 9 else . end;

def luhn_sum: [ range(0; . | length) as $i | .[$i] * (if $i % 2 == 1 then 2 else 1 end) | cap9 ] | add;

def valid_input: test("^\\d+$"; "") and . != "0";

def valid_luhn: split("") | map(tonumber) | reverse | luhn_sum % 10 == 0;

gsub("\\s"; "") | (. | valid_input) and (. | valid_luhn)
