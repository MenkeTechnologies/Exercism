pub fn squareOfSum(number: isize) isize {
    var n: isize = number;
    var sum: isize = 0;
    while (n != 0) : (n -= 1) {
        sum += n;
    }
    return sum * sum;
}
pub fn sumOfSquares(number: isize) isize {
    var n: isize = number;
    var sum: isize = 0;
    while (n != 0) : (n -= 1) {
        sum += n * n;
    }
    return sum;
}
pub fn differenceOfSquares(number: isize) isize {
    return squareOfSum(number) - sumOfSquares(number);
}
