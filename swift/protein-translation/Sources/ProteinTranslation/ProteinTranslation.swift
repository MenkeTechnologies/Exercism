//Solution goes in Sources


extension String {
    func chunked(_ size: Int) -> [String] {
        stride(from: 0, to: count, by: size).map {
            let start = index(startIndex, offsetBy: $0)
            let end = index(start, offsetBy: size, limitedBy: endIndex) ?? endIndex
            return String(self[start..<end])
        }
    }
}

enum CodonError: Error {
    case runtimeError(String)

}

enum Protein: String {
    case Methionine
    case Phenylalanine
    case Leucine
    case Serine
    case Tyrosine
    case Cysteine
    case Tryptophan
    case STOP

    init(_ codon: String) throws {
        switch codon {
        case "AUG": self = .Methionine
        case "UUU", "UUC": self = .Phenylalanine
        case "UUA", "UUG": self = .Leucine
        case "UCU", "UCC", "UCA", "UCG": self = .Serine
        case "UAU", "UAC": self = .Tyrosine
        case "UGU", "UGC": self = .Cysteine
        case "UGG": self = .Tryptophan
        case "UAA", "UAG", "UGA": self = .STOP
        default: throw CodonError.runtimeError(codon)
        }
    }
}

class ProteinTranslation {

    public class func translationOfCodon(_ rna: String) throws -> String {

        try Protein.init(rna).rawValue

    }

    public class func translationOfRNA(_ rna: String) throws -> [String] {

        try rna.chunked(3).map {
            try translationOfCodon($0)
        }.prefix {
            $0 != "STOP"
        }

    }
}
