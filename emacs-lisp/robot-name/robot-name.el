(provide 'robot-name)

(defun build-robot ()
  (reset-robot '()))

(defun robot-name (robot)
  (plist-get robot :name))

(defun reset-robot (robot)
  (plist-put robot :name
             (format "%c%c%03d"
                     (+ ?A (random 26))
                     (+ ?A (random 26))
                     (random 1000))))
