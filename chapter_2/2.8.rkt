#lang racket
;;;make interval
(define (make-interval a b)(cons a b))
;;;lower and upper bound
(define (lower-bound x)(car x))
(define (upper-bound x)(cdr x))
;;;sub interval
(define (sub-interval x y)
  (make-interval (-(lower-bound x)(upper-bound y))
                 (-(upper-bound x)(lower-bound y))))
;;;test
(define i1 (make-interval 2 3))
(define i2 (make-interval 1 4))
(define i3 (make-interval 1 3))
(define i4 (make-interval 2 4))
(sub-interval i1 i2)
(sub-interval i1 i3)
(sub-interval i1 i4)