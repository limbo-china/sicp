#lang racket
;;; fringe
(define (fringe list)
  (cond((null? list)null)
       ((not(pair? (car list)))(cons (car list)(fringe(cdr list))))
       (else(append(fringe (car list))(fringe(cdr list))))))
;;;test
(define x (list (list 1 2)(list 3 4)))
(fringe x)
(fringe (list x x))
