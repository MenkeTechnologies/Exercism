#lang racket

(provide binary-search)

(define (binary-search array value)
  (define (aux lo hi)
    (cond
      [(> lo hi) (error "Value not in array")]
      [else (define mid (quotient (+ hi lo) 2))
            (cond
              [(< value (list-ref array mid)) (aux lo (sub1 mid))]
              [(< (list-ref array mid) value) (aux (add1 mid) hi)]
              [else mid])]))
  (aux 0 (sub1 (length array))))

