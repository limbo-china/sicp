#lang racket
(define (cont-frac n d k)
  (if(= k 1)
     (/ n d)
     (/ n (+(cont-frac n d (- k 1)) d))))

(cont-frac 1.0 1.0 50)