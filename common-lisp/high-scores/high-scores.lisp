(defpackage :high-scores
  (:use :cl)
  (:export :make-high-scores-table :add-player
           :set-score :get-score :remove-player))

(in-package :high-scores)

(defun make-high-scores-table ()
 (make-hash-table)
 )

(defun add-player (table name)
 (set-score table name 0)
 )

(defun set-score (table name score)
 (setf (gethash name table) score)
 )

(defun get-score (table name)
 (gethash name table 0)
 )

(defun remove-player (table name)
 (remhash name table)
 )
