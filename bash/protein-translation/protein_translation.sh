#!/usr/bin/env bash

declare -r rna="$1"
declare i res=''

for (( i = 0; i < ${#rna}; i += 3 )); do
    case "${rna:$i:3}" in
        'AUG' ) res+='Methionine ' ;;
        'UUU'|'UUC' ) res+='Phenylalanine ' ;;
        'UUA'|'UUG' ) res+='Leucine ' ;;
        'UCU'|'UCC'|'UCA'|'UCG') res+='Serine ' ;;
        'UAU'|'UAC' ) res+='Tyrosine ' ;;
        'UGU'|'UGC' ) res+='Cysteine ' ;;
        'UGG' ) res+='Tryptophan ' ;;
        'UAA'|'UAG'|'UGA' ) break ;;
        * ) echo 'Invalid codon'; exit 1 ;;
    esac
done
echo "${res% }"
