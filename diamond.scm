; lang: owl lisp
; https://codegolf.stackexchange.com/questions/8696/print-this-diamond/

(map (λ (x)
        (map display
             (append
               (map (λ (_) " ") (iota 1 1 (- 10 x)))
               (iota 1 1 (+ 1 x))
               (iota (- x 1) -1 0)
               `("\n"))))
     (append (iota 1 1 9)
             (iota 9 -1 0)))

(map (λ (x) (map display (append (map (λ (_) " ") (iota 1 1 (- 10 x))) (iota 1 1 (+ 1 x)) (iota (- x 1) -1 0) `("\n")))) (append (iota 1 1 9) (iota 9 -1 0)))

