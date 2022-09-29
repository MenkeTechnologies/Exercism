class PhoneNumber {
    String clean(String number){

        String fullNumber;
        String noIntl;

        if (number.contains(RegExp(r'[a-zA-Z]'))) { throw FormatException("letters not permitted"); }
        if (number.contains(RegExp(r'[@:!]'))) { throw FormatException("punctuations not permitted"); }

        fullNumber = number.replaceAll(RegExp(r'\D'), '');

        if (fullNumber.length > 11) { throw FormatException("more than 11 digits"); }
        else if (fullNumber.length < 10) { throw FormatException("incorrect number of digits"); }
        else if (fullNumber.length == 11) {
            if (fullNumber[0] != "1") { throw FormatException("11 digits must start with 1"); }
            else { noIntl = fullNumber.substring(1); }
        }
        else noIntl = fullNumber;
        if (noIntl[0] == "0") { throw FormatException("area code cannot start with zero"); }
        else if (noIntl[0] == "1") { throw FormatException("area code cannot start with one"); }
        else if (noIntl[3] == "0") { throw FormatException("exchange code cannot start with zero"); }
        else if (noIntl[3] == "1") { throw FormatException("exchange code cannot start with one"); }
        else { return noIntl; }
    }
}

