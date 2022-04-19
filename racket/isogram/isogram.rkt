#lang racket

(provide isogram?)

(require srfi/13)

(define (isogram? s)
 (define str (string-downcase (string-filter char-alphabetic? s)))
 (sequence-andmap (lambda (c) (= (string-count str c) 1)) str)
)
