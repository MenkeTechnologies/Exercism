#lang racket

(provide on-earth
         on-mercury
         on-venus
         on-mars
         on-jupiter
         on-saturn
         on-uranus
         on-neptune)

(define earth-year 31557600)

(define (on-earth seconds) (/ seconds earth-year))
(define (on-mercury seconds) (/ (on-earth seconds) 0.2408467))
(define (on-venus seconds) (/ (on-earth seconds) 0.61519726))
(define (on-mars seconds) (/ (on-earth seconds) 1.8808158))
(define (on-jupiter seconds) (/ (on-earth seconds) 11.862615))
(define (on-saturn seconds) (/ (on-earth seconds) 29.447498))
(define (on-uranus seconds) (/ (on-earth seconds) 84.016846))
(define (on-neptune seconds) (/ (on-earth seconds) 164.79132))
