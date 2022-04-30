(defpackage :log-levels
  (:use :cl)
  (:export :log-message :log-severity :log-format))

(in-package :log-levels)

(defun log-message (log-string)
 (subseq log-string (+ 2 (position #\: log-string))))

(defun log-severity-substr (log-string)
 (string-downcase (subseq log-string 1 (position #\] log-string))))

(defun log-severity (log-string)
 (let ((severity (log-severity-substr log-string)))
  (cond
    ((string= severity "info") :everything-ok)
    ((string= severity "warn") :getting-worried)
    ((string= severity "ohno") :run-for-cover)
    (t (error "Invalid log severity: ~S" severity))
   )))

(defun log-format (log-string)
 (ecase (log-severity log-string)
    (:everything-ok (string-downcase (log-message log-string)))
    (:getting-worried (string-capitalize (log-message log-string)))
    (:run-for-cover (string-upcase (log-message log-string)))
  ))
