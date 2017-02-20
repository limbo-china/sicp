#lang racket
(define (enum-interv x y)
  (if (> x y)
      null
      (cons x (enum-interv (+ x 1) y))))

(define (unique-pairs n)
  (map (lambda (i)
         (map (lambda (j) (list i j))
              (enum-interv 1 (- i 1))))
       (enum-interv 1 n)))

;;; need to add accumulate

(unique-pairs 5)