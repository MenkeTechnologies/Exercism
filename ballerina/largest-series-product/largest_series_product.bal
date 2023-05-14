public function largestProduct(string digitString, int span) returns int|error {
    if span < 0 {
        return error("span must not be negative");
    }
    if span > digitString.length() {
        return error("span must be smaller than string length");
    }
    int zero = string:toCodePointInt("0");
    int[] digits = digitString.toCodePointInts().map(c => c - zero);
    if !digits.every(d => d >= 0 && d <= 9) {
        return error("digits input must only contain digits");
    }
    var multiply = function(int acc, int n) returns int => acc * n;
    int largest = int:MIN_VALUE;
    foreach int offset in 0 ..< (digits.length() - span + 1) {
        int product = digits.slice(offset, offset + span).reduce(multiply, 1);
        largest = int:max(largest, product);
    }
    return largest;
}
