#lang racket

(provide score)

(define (score x y)
  (define dist (sqrt (+ (sqr x) (sqr y))))
  (cond
    [(> dist 10) 0]
    [(> dist 5) 1]
    [(> dist 1) 5]
    [else 10]))
