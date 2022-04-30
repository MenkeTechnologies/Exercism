(defpackage :character-study
  (:use :cl)
  (:export
   :compare-chars
   :size-of-char
   :change-size-of-char
   :type-of-char))
(in-package :character-study)

(defun compare-chars (ch1 ch2)
 (cond
  ((char= ch1 ch2) :equal-to)
  ((char> ch1 ch2) :greater-than)
  ((char< ch1 ch2) :less-than)
  ))

(defun size-of-char (ch)
 (cond
  ((upper-case-p ch) :big)
  ((lower-case-p ch) :small)
  (t :no-size)
  ))

(defun change-size-of-char (ch wanted-size)
 (cond
  ((string= wanted-size :big) (char-upcase ch))
  ((string= wanted-size :small) (char-downcase ch))
  ))

(defun type-of-char (ch)
 (cond
  ((alpha-char-p ch) :alpha)
  ((digit-char-p ch) :numeric)
  ((char= ch #\Space) :space)
  ((char= ch #\Newline) :newline)
  (t :unknown)
  )
 )
