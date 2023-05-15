function roman(int number) returns string {
    string romanNumeral = "";
    int[] arabicValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    string[] romanNumerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    int dup = number;
    foreach int i in 0..<arabicValues.length() {
        while dup >= arabicValues[i] {
            romanNumeral = romanNumeral + romanNumerals[i];
            dup -= arabicValues[i];
        }
    }
    return romanNumeral;
}
