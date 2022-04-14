#include "rna_transcription.h"

#include <map>

using namespace std;

namespace rna_transcription {
    static const map<char, char> dna2rna = {
            {'G', 'C'},
            {'C', 'G'},
            {'T', 'A'},
            {'A', 'U'}
    };

    char to_rna(char ch) {
        return dna2rna.at(ch);
    }

    string to_rna(string dna) {
        string rna;
        for (char ch: dna) {
            rna += to_rna(ch);
        }
        return rna;
    }

}  // namespace rna_transcription
