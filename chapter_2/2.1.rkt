#lang racket
(define (make-rat n d)
  (let ((n (if(< (* n d) 0)(-(abs n))(abs n)))
        (d (abs d)))
    (cons n d)))

(define (numer x) (car x))
(define (denom x) (cdr x))
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(print-rat (make-rat 1 2))
(print-rat (make-rat -1 2))
(print-rat (make-rat 1 -2))
(print-rat (make-rat -1 -2))