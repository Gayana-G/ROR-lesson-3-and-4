require 'faker'

def valid_answer?(input)
    input.downcase == "yes" || input.downcase == "no"
end

loop do
  print "Do you want to know a fact about Chuck Norris? (yes/no): "
  answer = gets.chomp.downcase
  unless valid_answer?(answer)
    puts "Invalid input."
    next
  end
  break if answer == "no"
  puts Faker::ChuckNorris.fact
end
