(in-package #:cl-user)

(defpackage #:grade-school
  (:use #:common-lisp)
  (:export #:make-school #:roster #:add #:grade))

(in-package #:grade-school)

(defun make-school () (make-hash-table))

(defun roster (school)
  (let ((grades-and-names '()))
    (maphash #'(lambda (k v) (push (cons k (sort v #'string<)) grades-and-names)) school)
    (reduce #'append (mapcar #'cdr (sort grades-and-names #'< :key #'car)))))

(defun add (school student grade)
  (unless (member student (roster school) :test #'string=)
    (push student (gethash grade school))))

(defun grade (school grade)
  (sort (gethash grade school) #'string<))
