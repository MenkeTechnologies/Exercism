def is_yelling: test("[A-Z]") and (test("[a-z]") | not);

def is_question: test("\\?\\s*$") ;

def is_empty: test("^\\s*$") ;

.heyBob |
if is_yelling and is_question then "Calm down, I know what I'm doing!"
elif is_yelling then "Whoa, chill out!"
elif is_question then "Sure."
elif is_empty then "Fine. Be that way!"
else "Whatever."
end
