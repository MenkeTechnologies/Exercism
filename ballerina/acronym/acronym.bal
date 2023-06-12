function abbreviate(string phrase) returns string {
    string:RegExp r = re `[-\s_]+[^\w]*`;
    string[] c = r.split(phrase).'map(w => w[0]);
    return string:'join("", ...c).toUpperAscii();
}
