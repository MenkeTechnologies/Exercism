//Solution goes in Sources

public enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}

public class Nucleotide {

    let dna: String

    public func complementOfDNA() throws -> String {
        var rna = ""
        for l in dna {
            switch l {

            case "G": rna += "C"
            case "C": rna += "G"
            case "T": rna += "A"
            case "A": rna += "U"
            default: throw TranscriptionError.invalidNucleotide(message: "\(l) is not a valid Nucleotide")

            }
        }
        return rna
    }

    public init(_ dna: String) {
        self.dna = dna.uppercased()
    }
}