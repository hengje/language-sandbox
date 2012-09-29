; Calculates sum of even-valued fibonacci numbers below 4.000.000
(defn fibs 
    ([a b] (cons a (lazy-seq (fibs b (+ a b))))))

(println (
    reduce
        +
	(filter 
            (fn [x] (= (mod x 2) 0))
	    (take-while (fn [x] (< x 4000000)) (fibs 1 2)))))

