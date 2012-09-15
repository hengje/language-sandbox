(1..100).each do |i|
    if i % 7 == 0 || (i.to_s.include? '7')
        puts "PIVO"
    else
        puts i
    end
end
