; Sum of all digits in 100!

(defn fact
    ([n] (reduce *' (range 1 (inc n)))))

(defn sumdigits
   ([n] (reduce
       +'
       (map (fn [x] (read-string (str x))) (str n))))) 

(println (sumdigits (fact 100)))

