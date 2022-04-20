#lang racket

(provide list-allergies allergic-to?)

(define allergens
  #("eggs"
    "peanuts"
    "shellfish"
    "strawberries"
    "tomatoes"
    "chocolate"
    "pollen"
    "cats"
    ))

(define (list-allergies mask)
 (vector->list (vector-sort (vector-filter (lambda (food) (allergic-to? food mask)) allergens) string<?))
 )

(define (allergic-to? food mask)
  (> (bitwise-and mask (expt 2 (vector-member food allergens))) 0)
)
