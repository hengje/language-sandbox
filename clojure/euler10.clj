; Sum of all primes below 2.000.000
(defn isprime
    ([n] (loop [x 2]
        (if (= 0 (mod n x))
	    false
	    (if (> (* x x) n)
	        true
		(recur (inc x)))))))

(defn primes
    ([] (cons 2 (filter (fn [x] (isprime x)) (iterate (fn [x] (+ x 2)) 3)))))

(println (
    reduce + (take-while (fn [x] (< x 2000000)) (primes))))

