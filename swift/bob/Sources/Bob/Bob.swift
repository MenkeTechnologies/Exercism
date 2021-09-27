//Solution goes in Sources

class Bob {

    public class func hey(_ input: String) -> String {

        let nospace = input.filter {
            !$0.isWhitespace
        }

        if nospace.isEmpty {
            return "Fine. Be that way!"
        }

        if !nospace.filter{ $0.isUppercase }.isEmpty && nospace.filter{ $0.isLowercase }.isEmpty {

//            if nospace.last! == "?" {
//                return "Calm down, I know what I'm doing!"
//            }

            return "Whoa, chill out!"

        }
        if nospace.last! == "?" {
            return "Sure."
        }


        return "Whatever."

    }
}
