#lang racket

(provide armstrong-number?)

(define (armstrong-number? n)
 (let* ([tostr (number->string n)]
        [len (string-length tostr)])
  (= n (for/sum ([digit tostr])
        (expt (string->number (string digit)) len)))
  )
)
