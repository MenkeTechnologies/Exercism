(defmodule anagram (export (find 2)))

(defun find (word choices)
  (lists:filter
    (lambda (choice) (is-anagram word choice)) choices))
(defun is-anagram (word1 word2)
  (let ((lower1 (string:to_lower word1))
        (lower2 (string:to_lower word2)))
    (and (/= lower1 lower2)
         (== (lists:sort lower1) (lists:sort lower2)))))
