#lang racket
(define (for-each p lst)
    (cond((not(null? lst))
        (begin
            (p (car lst))
            (for-each p (cdr lst))))))

(for-each (lambda (x) (newline)(display x))
          (list 1 2 3 4 5 6 7))