#lang racket

(provide (struct-out character)
         ability
         make-character
         modifier)

(struct character
  (strength dexterity constitution intelligence wisdom charisma hitpoints))

(define (ability)
  (let ([dices (for/list ([_ 4]) (add1 (random 6)))])
    (apply + (rest (sort dices <)))))

(define (modifier value)
  (floor (/ (- value 10) 2)))

(define (make-character)
  (let ([constitution (ability)])
    (character (ability) (ability) constitution (ability) (ability) (ability) (+ 10 (modifier constitution)))))

