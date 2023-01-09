const proteins: { [code: string]: string } = {
    AUG: 'Methionine', UUU: 'Phenylalanine', UUC: 'Phenylalanine', UUA: 'Leucine', UUG: 'Leucine',
    UCU: 'Serine', UCC: 'Serine', UCA: 'Serine', UCG: 'Serine', UAU: 'Tyrosine',
    UAC: 'Tyrosine', UGU: 'Cysteine', UGC: 'Cysteine', UGG: 'Tryptophan', UAA: 'STOP',
    UAG: 'STOP', UGA: 'STOP'
}
export const translate = (input: string, matches: string[] = [...input.matchAll(/([UAGC]{3})/g)].map(arr => arr[0])
    .map(m => proteins[m])) => matches.indexOf('STOP') == -1 ? matches : matches.slice(0, matches.indexOf('STOP'))
