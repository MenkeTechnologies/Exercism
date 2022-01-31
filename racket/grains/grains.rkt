#lang racket

(provide square total)

(define (square n)
(expt 2 (sub1 n))
)

(define (total)
 (for/sum ([i (in-range 1 65)]) (square i))
)
