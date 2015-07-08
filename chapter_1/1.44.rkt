#lang racket
(define (repeated f n)
  (if(= n 1)
     f
     (lambda (x)(f((repeated f (- n 1))x)))))

(define dx 0.001)
(define (square x)(* x x )) 
(define (smooth f)
  (lambda (x)(/(+(f(- x dx))(f x)(f(+ x dx))) 3)))

(((repeated smooth 5)square)3)