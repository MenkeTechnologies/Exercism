public function distance(string s1, string s2) returns int|error {
    if s1.length() != s2.length() {
            return error("Unequal strand lengths");
        }
    return zip(s1.toCodePointInts(), s2.toCodePointInts())
           .filter(pair => pair[0] != pair[1])
           .length();
}

function zip(anydata[] a, anydata[] b) returns anydata[][] {
    return from int i in int:range(0, a.length(), 1) 
           select [a[i], b[i]];
}

