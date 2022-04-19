#lang racket

(provide word-count)

(define (word-count sentence)
 (define regex #px"(\\w+'\\w|\\d+|\\w+)")
 (for/fold
    ([wc (hash)])
    ([w (in-list (map string-downcase (regexp-match* regex sentence)))])
    (hash-set wc w (add1 (hash-ref wc w 0)))
    )
 )

