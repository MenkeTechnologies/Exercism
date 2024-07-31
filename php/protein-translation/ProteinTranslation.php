<?php
declare(strict_types=1);

class ProteinTranslation
{
    public function getProteins(string $rna): array
    {
        $res = [];
        $codons = str_split($rna, 3);

        foreach ($codons as $codon) {
            $check_for_stop = match ($codon) {
                'AUG' => $res[] = 'Methionine',
                'UUU', 'UUC' => $res[] = 'Phenylalanine',
                'UUA', 'UUG' => $res[] = 'Leucine',
                'UCU', 'UCC', 'UCA', 'UCG' => $res[] = 'Serine',
                'UAU', 'UAC' => $res[] = 'Tyrosine',
                'UGU', 'UGC' => $res[] = 'Cysteine',
                'UGG' => $res[] = 'Tryptophan',
                'UAA', 'UAG', 'UGA' => 'STOP',
                default => throw new InvalidArgumentException('Invalid codon'),
            };
            if ($check_for_stop === 'STOP') {
                break;
            }
        }

        return $res;
    }
}
