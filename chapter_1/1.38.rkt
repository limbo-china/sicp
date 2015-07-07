#lang racket
(define (cont-frac n d k)
  (define (cont-iter n d m result)  
  (if(= k m)
     result
     (cont-iter n d (+ m 1) (/ n (+ d result)))))
    (cont-iter n d 1 1))

(define (eular k)
  (define (d)
    (if(= (remainder(+ m 1) 3)0)(* 2(/(+ m 1)3))1))
  (cont-frac 1 d k))
(cont-frac 1.0 1.0 500)
(eular 50)
;;;;;;;;not finished!!!!!!!!!!!