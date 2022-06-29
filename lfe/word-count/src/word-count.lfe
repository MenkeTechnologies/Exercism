(defmodule word-count
  (export (count 1)))

(defun count (input)
  (let ((words (to-words (string:to_lower input))))
    (lists:foldl #'insert/2 (dict:new) words)))

(defun to-words (input)
  (remove-empty
    (re:split input "[^A-Za-z0-9]+" '(#(return list)))))

(defun remove-empty (words)
  (lists:filter (lambda (word) (> (length word) 0)) words))

(defun insert (word acc)
  (dict:update word (lambda (count) (+ count 1)) 1 acc))
