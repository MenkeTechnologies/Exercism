(defpackage :anagram
  (:use :cl)
  (:export :anagrams-for))

(in-package :anagram)

(defun anagrams-for (target candidates)
  (labels ((lcsort (s)
             (sort (string-downcase s) #'char<))
           (is-anagram-of-target (s)
               (and (string= (lcsort s) (lcsort target))
                    (string-not-equal s target))))
    (remove-if-not #'is-anagram-of-target candidates)))
