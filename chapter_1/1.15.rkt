#lang racket
(require racket/trace)
(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0)))))
;;;;;
(sine (/ pi 6))
(sine (/ pi 3))
(sine (/ pi 4))
(sine (/ pi 2))
(trace p)
(sine 12.15)
(sine 10)
(sine 30)
(sine 90)