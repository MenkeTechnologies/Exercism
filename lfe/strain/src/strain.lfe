(defmodule strain
  (export (keep 2) (discard 2)))

(defun keep (f lst)
  (list-comp ((<- x lst) (funcall f x)) x))

(defun discard (f lst)
  (list-comp ((<- x lst) (not (funcall f x))) x))
