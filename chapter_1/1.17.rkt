#lang racket
(require racket/trace)
;; a*b=(a+a)*(b/2) [b is even]
;; a*b=a*(b-1)+a [b is odd]
;; a*b=0  [b equals 0]
(define (even? n)
  (= (remainder n 2) 0))

(define (double x) (+ x x))
(define (halve x ) (/ x 2))

(define (* a b)
  (cond((= b 0) 0)
       ((even? b) (* (double a) (halve b)))
       (else (+ a (* a (- b 1))))))
(trace *)
(* 1 1)
(* 2 3)
(* 0 2)
(* 6 7)