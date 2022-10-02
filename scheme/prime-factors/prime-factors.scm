(import (rnrs))
(define (factorize n)
  (let aux ((n n) (d 2) (factors '()))
    (cond
      ((= n 1) (reverse factors))
      ((= 0 (modulo n d)) (aux (/ n d) d (cons d factors)))
      (else (aux n (if (= d 2) 3 (+ d 2)) factors)))))

