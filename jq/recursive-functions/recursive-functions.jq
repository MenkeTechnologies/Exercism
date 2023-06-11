def rest: .[1:];

def array_add:
  if length == 0 then 0
  else first + (rest | array_add)
  end
;

def array_reverse:
  if length == 0 then []
  else (rest | array_reverse) + [first]
  end
;

def array_map(f):
  if length == 0 then []
  else [first | f] + (rest | array_map(f))
  end
 ;
