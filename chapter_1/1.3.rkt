#lang racket
;;平方
(define (square x)
  (* x x))
;;compare
(define (bigger x y)
  (if (> x y) x y))
(define (smaller x y)
  (if (> x y) y x))
;;平方和
(define (sum-of-squares x y)
  (+ (square x)
     (square y)))
(define (main x y z)
  (sum-of-squares (bigger x y)
                  (bigger (smaller x y) z)))
(main 3 2 5)