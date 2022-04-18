#lang racket

(provide sum-of-squares square-of-sum difference)

(define (sum-of-squares n)
    (for/sum ([s (in-range 1 (add1 n))]) (sqr s))
)

(define (square-of-sum n)
    (sqr (for/sum ([s (in-range 1 (add1 n))]) s))
)

(define (difference n)
    (- (square-of-sum n) (sum-of-squares n)))
