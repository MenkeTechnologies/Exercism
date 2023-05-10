public function isPangram(string sentence) returns boolean {
    var lower = sentence.toLowerAscii();
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    foreach var c in alphabet {
        if lower.indexOf(c) == () {
            return false;
        }
    }
    return true;
}
