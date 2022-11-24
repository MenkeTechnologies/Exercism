;;; list-ops.el --- List Ops (exercism)  -*- lexical-binding: t; -*-
(require 'subr-x)

(provide 'list-ops)

(defun list-foldl (f lst acc)
  (named-let rc ((lst1 lst) (acc1 acc))
		(if lst1 (rc (cdr lst1) (funcall f acc1 (car lst1))) acc1)))

(defun list-foldr (f lst acc)
  (list-foldl (lambda (n acc1) (funcall f acc1 n)) (list-reverse lst) acc))

(defun list-empty-p (lst) (not lst))

(defun list-sum (lst) (list-foldl '+ lst 0))

(defun list-length (lst) (list-foldl (lambda (acc _) (1+ acc)) lst 0))

(defun list-append (lst1 lst2) (list-foldr 'cons lst1 lst2))

(defun list-reverse (lst) (list-foldl (lambda (acc n) (cons n acc)) lst '()))

(defun list-concatenate (lst1 lst2 &rest LISTS)
  (list-foldl 'list-append (cons lst2 LISTS) lst1))

(defun list-filter (lst pred)
  (list-foldr (lambda (n acc) (if (funcall pred n) (cons n acc) acc)) lst '()))

(defun list-map (lst f)
  (list-foldr (lambda (n acc) (cons (funcall f n) acc)) lst '()))

