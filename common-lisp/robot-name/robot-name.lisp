(defpackage :robot-name
  (:use :cl)
  (:export :build-robot :robot-name :reset-name))
(in-package :robot-name)

(defvar *name-list* '())

(defun rand-upcase-char ()
  (string (code-char (+ 65 (random 26)))))

(defun rand-int ()
  (string (digit-char (random 10))))

(defun generate-robot-name ()
  (let ((temp-name (concatenate 'string (rand-upcase-char) (rand-upcase-char) (rand-int) (rand-int) (rand-int))))
    (confirm-unique-name temp-name)))

(defun confirm-unique-name (name)
  (if (find name *name-list*)
      (generate-robot-name)
      name))

(defun robot-name (robot)
  (car robot))

(defun build-robot ()
  (let ((name (generate-robot-name)))
    (setf *name-list* (cons name *name-list*))
    (list name)))

(defun reset-name (robot)
  (let ((new-name (generate-robot-name)))
    (setf (car robot) new-name)))

