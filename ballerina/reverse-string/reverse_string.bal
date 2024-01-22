import ballerina/regex;

public function reverse(string s) returns string {
    return string:'join("", ...(regex:split(s, "").reverse()));
}
