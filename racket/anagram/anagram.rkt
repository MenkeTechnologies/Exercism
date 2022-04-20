#lang racket

(provide anagrams-for)

(define (sort-letters s)
 (sort (string->list (string-downcase s)) char<?)
 )

(define (anagrams-for word cands)
 (let ([sorted (sort-letters word)])
  (filter (lambda (cand) (and (equal? (sort-letters cand) sorted) (not (equal? cand word)))) cands)
  )
 )
