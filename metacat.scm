; lang: owl lisp
; https://codegolf.stackexchange.com/questions/263283/meta-cat-program/

(define S
  (λ (s) `(print (list->string ',(string->list s))))
)

(define test-cases '("cat" "fish" "m\nta-c t" "m\"'`\\c"))

(define (sz)
  (for-each (λ (x) (print (S x))) test-cases))

(sz)
