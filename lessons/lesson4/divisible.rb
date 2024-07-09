def divisible_by_2_3_5
(1..100).select { |number| number % 2 == 0 || number % 3 ==0 || number % 5 == 0 }
end

numbers = divisible_by_2_3_5
puts numbers.inspect