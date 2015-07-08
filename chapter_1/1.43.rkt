#lang racket
(define (inc x)(+ x 1))

(define (square x)(* x x))
 
(define (repeated f n)
  (if(= n 1)
     f
     (lambda (x)(f((repeated f (- n 1))x)))))
(inc 3)
((repeated square 2)5) 
   