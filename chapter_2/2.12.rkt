#lang racket
;;;using the processes in exercise 2.7
(define (make-interval x y)(cons x y))
(define (lower-bound x)(car x))
(define (upper-bound x)(cdr x))
;;;make center percent 
(define (make-center-percent c p)
  (make-interval (- c (* c(/ p 100)))(+ c (* c(/ p 100)))))
;;;get center
(define (center i)
  (/(+(lower-bound i)(upper-bound i))2))
;;;get percent
(define (percent i)
  (let ((c (center i)))
    (* (/(- c (lower-bound i)) c) 100)))
;;;test
(define i1 (make-center-percent 4 20))
(center i1)
(percent i1)