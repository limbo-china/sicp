#lang racket
(define tolerance 0.0001)
(define (display-info guess step)(newline)
    (display guess)(display " ")(display "step:")(display step))
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess step)
    (display-info guess step)
    (let((next (f guess)))
      (if (close-enough? guess next)
          (begin
           (newline)
          next)
          (try next (+ 1 step)))))
  (try first-guess 1))

(fixed-point (lambda (x) (/(+ x (/ (log 1000) (log x)))2)) 3.0)  ;;average

(fixed-point (lambda (x) (/ (log 1000) (log x))) 3.0)  ;;not average
