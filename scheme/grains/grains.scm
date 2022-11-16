(import (rnrs))

(define (square n)
  (assert (< 0 n 65))
  (expt 2 (- n 1)))

(define total
  (fold-left + 0 (map square (iota 64 1 1))))

