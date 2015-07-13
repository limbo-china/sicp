#lang racket
;;;some different answers in "sicp.readthedocs.org"

;;;reverse list
(define (reverse list)
  (define (iter list result)
    (if(null? list)
       result
       (iter (cdr list)
             (cons (car list) result))))
  (iter list '()))
;;;deep-reverse list
(define (deep-reverse list)
  (if (pair? list) 
      (reverse (map deep-reverse list))
      list))
;;;test
(define x (list (list 1 2)(list 3 4)))
(display x)
(newline)
(reverse x)
(deep-reverse x)
