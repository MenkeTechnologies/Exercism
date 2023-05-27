reduce (.strand / "")[] as $nt ({A: 0, C: 0, G: 0, T: 0};
  if has($nt )
    then .[$nt ] += 1
    else "Invalid nucleotide in strand" | halt_error
  end
)
