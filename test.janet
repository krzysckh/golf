(def EQ_FN deep=)
(defn test [f i o]
  (not (> (length (filter false? (map EQ_FN (map f i) o))) 0)))

(defn T [f i o]
  (if (test f i o)
    (print "OK")
    (print "TESTS FAILED")))
