sum = 0
(1..999).each do |i|
    if i % 3 == 0 || i % 5 == 0
        sum += i
    end
end
puts "Sum of all integers divisible by 3 or 5 below 1000: " + sum.to_s
