# Please implement your solution to rna-transcription in this file
class RnaComplement

    @@map = {
        'G' => 'C',
        'C' => 'G',
        'T' => 'A',
        'A' => 'U',

    }

    def self.of_dna (dna)
        dna.chars.map {|ch| @@map[ch]}.join
    end
end
