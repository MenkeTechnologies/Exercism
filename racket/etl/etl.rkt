#lang racket

(provide etl)

(define (etl old-hash)
  (define r (make-hash))
  (for ([(score letters) (in-hash old-hash)])
    (if (< score 1)
        (raise-arguments-error 'etl "Scores must be positive")
        (for ([letter (in-list letters)])
          (if (not (string? letter))
              (raise-arguments-error 'etl "Letters must be strings")
              (hash-set! r (string-downcase letter) score)))))
  r)
