(import (rnrs))

(define (pangram? phrase)
  (= 26 (length
    (letters
      (uniq (string->list
             (string-downcase phrase)))))))

(define (letters li)
  (filter
    (lambda (c) (char<=? #\a c #\z))
    li))

(define (uniq li)
  (fold-left
    (lambda (acc c) (if (member c acc) acc (cons c acc)))
    '()
    li))
