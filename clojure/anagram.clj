; Finds all anagrams in a list of words

(with-open [rdr (clojure.java.io/reader "english.words")]
    (println
        (vals
            (filter
                (fn[element]
	            (< 1 (count (val element))))
                (reduce 
                    (fn[acc element]
	                (if (contains? acc (sort element))
	                    (assoc acc (sort element) (cons element (get acc (sort element)))) 
                            (assoc acc (sort element) (list element))))
	            {}
	            (line-seq rdr))))))

