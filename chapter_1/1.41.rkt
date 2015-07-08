#lang racket
(define (double g)
  (lambda (x) (g(g x))))

(define (inc x) (+ x 1))

(((double (double double)) inc)5)
;;; ________________________

;;; (((double (double double)) inc) 5) 
;;; ===> ((double (double (double (double inc)))) 5) 
;;; ===> 5 + (+ 1)* (2^4)

;;; ________________________

;;; (double (double double)) 
;;; ==> 2^1 ==> 2个2^1 ==> 2个（2个2^1) ==> 4个 2^1 ==> 4个double