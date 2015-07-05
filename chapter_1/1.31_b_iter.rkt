#lang racket
(require racket/trace)
(define (product term a next b)
  (define (iter a result)
    (if(> a b)
       result
       (iter (next a)(* (term a) result))))
  (iter a 1))

(define (factorial a b)
  (define (next a)
    (+ a 2))
  (define (term a)
    (exact->inexact(*(/(- a 1) a)(/(+ a 1) a))))
  
  (product term a next b))

(factorial 3 7000)
(factorial 3 9)
(factorial 3 11)
(factorial 3 13)