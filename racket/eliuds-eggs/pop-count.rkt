#lang racket

(provide number->eggs)

(define (number->eggs n)
  (count (lambda (c) (char=? c #\1)) (string->list (format "~b" n))))
