#include "protein_translation.h"

namespace protein_translation {
    vector<string> proteins(const string &rna) {
        vector<string> results;
        for (int i = 0; i <= static_cast<int>(rna.length()) - 3; i += 3) {
            const string seq = rna.substr(i, 3);
            if (seq == "AUG") results.emplace_back("Methionine");
            if (seq == "UUU" || seq == "UUC") results.emplace_back("Phenylalanine");
            if (seq == "UUA" || seq == "UUG") results.emplace_back("Leucine");
            if (seq == "UCU" || seq == "UCC" || seq == "UCA" || seq == "UCG") results.emplace_back("Serine");
            if (seq == "UAU" || seq == "UAC") results.emplace_back("Tyrosine");
            if (seq == "UGU" || seq == "UGC") results.emplace_back("Cysteine");
            if (seq == "UGG") results.emplace_back("Tryptophan");
            if (seq == "UAA" || seq == "UAG" || seq == "UGA") break;

        }
        return results;
    }
}
