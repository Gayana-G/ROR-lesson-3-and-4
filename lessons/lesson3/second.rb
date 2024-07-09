person = Hash.new()

puts "What is your name?"
person[:first_name] = gets.chomp
person[:first_name] = person[:first_name].capitalize

puts "What is your last name?"
person[:last_name] = gets.chomp
person[:last_name] = person[:last_name].capitalize

puts "What is your age?"
person[:age] = gets.chomp.to_i
until person[:age] <= 150 && person[:age] > 0
    puts "People do not live that long. Try again"
    puts "What is your age?"
    person[:age] = gets.chomp.to_i
end

puts "What is your street address?"
person[:street_address] = gets.chomp
person[:street_address] = person[:street_address].split.map{ |el| el.capitalize}.join(" ");

puts "What city do you live in?"
person[:city] = gets.chomp
person[:city] = person[:city].capitalize
puts "What state is it in?"
person[:state] = gets.chomp
person[:state] = person[:state].upcase

puts "#{person[:first_name]} #{person[:last_name]}, #{person[:age]} years old, address is: #{person[:street_address]}, #{person[:city]}, #{person[:state]}"

#v1
puts person.values
#v2
person.each_value do |val|
    puts val
end

#v1
puts person.keys
#v2
person.each_key do |key|
    puts key
end
