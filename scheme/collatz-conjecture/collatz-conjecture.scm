(import (rnrs))

(define (collatz n)
  (if (eqv? n 1)
      0
      (1+ (collatz (if (even? n) (/ n 2) (1+ (* 3 n)))))))
