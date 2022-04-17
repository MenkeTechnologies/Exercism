(import (rnrs))

(define (hamming-distance s1 s2)
  (length (filter not (map char=? (string->list s1) (string->list s2)))))

