#lang racket
(define (square x) (* x x))

(define (even? n) (= (remainder n 2) 0))

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (cond((= counter 0) product)
       ((even? counter) (expt-iter (square b) (/ counter 2) product))
       (else (expt-iter b (- counter 1) (* product b)))))
(expt 10 6)
(expt 3 2)
(expt 3 1)
(expt 3 0)
(expt 4 2)
(expt 5 3)
