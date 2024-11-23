include std/map.e

constant dict = {{'A',0},{'C',0},{'G',0},{'T',0}}

public function counts(sequence nucleotides)
  map:map res = map:new_from_kvpairs(dict)
  for i=1 to length(nucleotides) do
    integer c = nucleotides[i]
    if not map:has(res, c) then return 0 end if
    map:put(res, c, 1, map:ADD)
  end for
  return res
end function
