sum = (1..999).select{|x|x%3==0||x%5==0}.reduce(:+)
puts "Sum of all integers divisible by 3 or 5 below 1000: " + sum.to_s

