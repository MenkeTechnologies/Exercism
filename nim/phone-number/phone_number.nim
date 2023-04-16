import re

proc clean*(s:string):string =
    var digits = s.replace(re"\D","")
    if len(digits) > 10:
        if digits[0]=='1':
            digits = digits[1..^1]
        else:
            raise newException(ValueError, "country code is not 1")
    elif len(digits) < 10:
        raise newException(ValueError, "too few valid digits")
    if digits[0] == '0' or digits[0] == '1' or digits[3] == '0' or digits[3] == '1':
        raise newException(ValueError, "invalid number")
    return digits

