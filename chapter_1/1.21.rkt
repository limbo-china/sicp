#lang racket
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test)
  (cond((>(* test test) n)n)
       ((= (remainder n test) 0) test)
       (else (find-divisor n (+ test 1)))))

(define (prime? n)
  (= (smallest-divisor n) n))

(prime? 13 )
(prime? 17 )
(prime? 15 )

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)
