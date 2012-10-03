; Calculates the largest prime factor of a number (600851475143)

(defn largestprimefactor
    ([n] (largestprimefactor n 2))
    ([n candidate] 
        (if (< n (* candidate candidate))
	    n
            (if (zero? (mod n candidate))
	        (max candidate (largestprimefactor (quot n candidate)))
	        (largestprimefactor n (inc candidate))))))

(println 
    (largestprimefactor 600851475143))

