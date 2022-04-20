#lang racket

(provide acronym)

(require threading)

(define (acronym s)
 (~>> s
    (string-split _ #px"[-\\s_]+")
    (map (curryr string-ref 0) )
    (map char-upcase)
    (apply string)
  )
)
