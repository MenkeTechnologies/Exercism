#lang racket

(provide add-gigasecond)

(require racket/date)

(define (add-gigasecond d)
 (seconds->date (+ (expt 10 9) (date->seconds d)))
)
