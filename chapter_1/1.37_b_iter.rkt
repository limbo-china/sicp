#lang racket
(define (cont-frac n d k)
  (define (cont-iter n d k result)  
  (if(= k 1)
     result
     (cont-iter n d (- k 1) (/ n (+ d result)))))
    (cont-iter n d k 1))

(/ 1(cont-frac 1.0 1.0 50))