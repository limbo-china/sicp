#lang racket
(require racket/trace)
(define (double x)(+ x x))
(define (havle x )(/ x 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (multi a b)
  (mul a b 0))

(define (mul a b product)
  (cond((= b 0) product)
       ((even? b)(mul (double a) (havle b) product))
       (else (mul a (- b 1) (+ product a)))))
(trace mul)
(multi 2 3)
(multi 1 6)
(multi 7 8)
