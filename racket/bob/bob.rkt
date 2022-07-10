#lang racket

(provide response-for)

(define (response-for s)
  (match (list
          (equal? "" (string-trim s))
          (equal? s (string-upcase s))
          (not (false? (regexp-match #px"[[:alpha:]]+" s)))
          (string-suffix? s "?"))
    ((list #t _ _ _) "Fine. Be that way!")
    ((list _ #t #t #t) "Calm down, I know what I'm doing!")
    ((list _ #t #t #f) "Whoa, chill out!")
    ((list _ _ _ #t) "Sure.")
    (_ "Whatever.")))
