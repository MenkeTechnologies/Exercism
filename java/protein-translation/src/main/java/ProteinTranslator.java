import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import static java.util.Map.entry;

class ProteinTranslator {
    private static final Map<String, String> CODONS_TO_PROTEIN;

    static {
        CODONS_TO_PROTEIN = Map.ofEntries(
                entry("AUG", "Methionine"),
                entry("UUU", "Phenylalanine"),
                entry("UUC", "Phenylalanine"),
                entry("UUA", "Leucine"),
                entry("UUG", "Leucine"),
                entry("UCU", "Serine"),
                entry("UCC", "Serine"),
                entry("UCA", "Serine"),
                entry("UCG", "Serine"),
                entry("UAU", "Tyrosine"),
                entry("UAC", "Tyrosine"),
                entry("UGU", "Cysteine"),
                entry("UGC", "Cysteine"),
                entry("UGG", "Tryptophan")
        );
    }

    List<String> translate(String rnaSequence) {
        return Arrays.stream(rnaSequence.split("(?<=\\G.{3})"))
                .map(CODONS_TO_PROTEIN::get)
                .takeWhile(Objects::nonNull)
                .toList();
    }
}
