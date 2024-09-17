(import (chicken process-context))

(define (tak x y z)
  (if (< y x)
      (tak
        (tak (- x 1) y z)
        (tak (- y 1) z x)
        (tak (- z 1) x y))
      z))

(display (apply tak (map string->number (command-line-arguments))))
(newline)
