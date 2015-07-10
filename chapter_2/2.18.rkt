#lang racket
;;;reverse list
(define (reverse list)
  (define (iter list result)
    (if(null? list)
       result
       (iter (cdr list)
             (cons (car list) result))))
  (iter list '()))
;;;test
(reverse (list 1 2 3 4))
(reverse (list 1 2 3 4 56 7 8 9 0 3940 03459 345 034))
