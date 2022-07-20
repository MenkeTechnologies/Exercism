(import (rnrs))

(define (classify limit)
  (let ((aliquot (sum-pos-factors 1 limit)))
  (cond
    ((= aliquot limit) 'perfect)
    ((> aliquot limit) 'abundant)
    (else 'deficient))))

(define (sum-pos-factors n limit)
  (when (< limit 1)
    (assertion-violation 'sum-pos-factors "limit must be a positive natural number" limit))
  (cond
    ((> n (/ limit 2)) 0)
    ((factor? n limit) (+ n (sum-pos-factors (+ n 1) limit)))
    (else (sum-pos-factors (+ n 1) limit))))

(define (factor? m limit)
  (zero? (modulo limit m)))
