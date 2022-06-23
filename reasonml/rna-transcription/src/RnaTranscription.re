type rna =
  | A
  | C
  | G
  | U;
type dna =
  | A
  | C
  | G
  | T;

let toRna = List.map(
       fun
       | A => U
       | G => C
       | C => G
       | T => A
     );

