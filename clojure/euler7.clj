; Find the 10.001st prime number
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
    nth (primes) 10000))

