map<string> matchingBrackets = {
    "{": "}",
    "[": "]",
    "(": ")"
};

function isPaired(string value) returns boolean {
    string[] stk = [];

    foreach string c in value {
        if c == "{" || c == "[" || c == "(" {
            stk.push(c);
        } else if c == "}" || c == "]" || c == ")" {
            if stk.length() == 0 || matchingBrackets[stk.pop()] != c {
                return false;
            }
        }
    }
    return stk.length() == 0;
}

