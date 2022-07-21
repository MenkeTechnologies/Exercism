(defpackage :larrys-winning-checker
  (:use :cl)
  (:export
    :make-empty-board
    :make-board-from-list
    :all-the-same-p
    :row
    :column))

(in-package :larrys-winning-checker)

(defun make-empty-board () (make-array '(3 3) :initial-element nil))

(defun make-board-from-list (list) (make-array '(3 3) :initial-contents list))

(defun all-the-same-p (row-or-col)
  (and (eq (aref row-or-col 0) (aref row-or-col 1))
       (eq (aref row-or-col 1) (aref row-or-col 2))))

(defun row (board rowi)
  (make-array '(3)
              :initial-contents (list (aref board rowi 0)
                                      (aref board rowi 1)
                                      (aref board rowi 2))))
(defun column (board col)
  (make-array '(3)
              :initial-contents (list (aref board 0 col)
                                      (aref board 1 col)
                                      (aref board 2 col))))
