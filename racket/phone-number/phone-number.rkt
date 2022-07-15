#lang racket

(provide nanp-clean)

(define re #px"^\\s*\\W?1?\\W*([2-9]\\d{2})\\W*([2-9]\\d{2})\\W*(\\d{4})\\s*$")

(define (nanp-clean s)
  (let ([matches (regexp-match re s)])
    (if matches (string-join (rest matches) "") (error "Invalid phone number"))))
