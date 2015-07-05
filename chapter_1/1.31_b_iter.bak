#lang racket
(require racket/trace)
(define (product term a next b)
  (if(> a b) 1
     (*(term a)(product term (next a) next b))))

(define (factorial a b)
  (define (next a)
    (+ a 2))
  (define (term a)
    (*(/(- a 1) a)(/(+ a 1) a)))
  
  (product term a next b))

;(trace )
(factorial 3.0 7000)
(factorial 3.0 9)
(factorial 3.0 11)
(factorial 3.0 13)