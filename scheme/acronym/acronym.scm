(import (rnrs))

(use-modules ((srfi srfi-1) #:select (filter-map)))

(define (acronym s)
  (let ([words (string-split
             s
             (lambda (c)
               (not (or (char-alphabetic? c)
                        (eq? c #\')))))])
    (list->string
     (filter-map (lambda (word)
                   (and (not (zero? (string-length word)))
                        (char-upcase (string-ref word 0))))
                 words))))
