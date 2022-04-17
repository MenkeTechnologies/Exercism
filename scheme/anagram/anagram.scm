(import (rnrs))

(define (anagram target words)
 (filter (lambda (word) (is-anagram? target word))
  (filter (lambda (word) (not (string=? (downcase target) (downcase word)))) words)
  )
  )

(define (is-anagram? target word)
 (string=? (sorted (downcase target)) (sorted (downcase word))))

(define (sorted word)
 (list->string (list-sort char<? (string->list word))))

(define (downcase word)
 (list->string (map char-downcase (string->list word))))
