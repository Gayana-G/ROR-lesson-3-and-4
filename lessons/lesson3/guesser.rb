def valid_answer?(input)
    valid = ["too low", "too high", "correct"]
    valid.include?(input.downcase)
end

def valid_yes_no?(input)
    input.downcase == "yes" || input.downcase == "no"
end

def guessing_game
    loop do
        puts "Please think of a number from 1 to 100"
        
        low = 1
        high = 100
        guess = nil
        lying = false

        loop do 
            #binary search
            guess = (low + high) / 2
            puts "Your number is #{guess}. Enter 'correct', too low', or 'too high'"
            answer = gets.chomp.downcase

            unless valid_answer?(answer)
                puts "Invalid input. Enter 'correct', too low', or 'too high'"
                next
            end

            if answer == "correct"
                break
            elsif answer == 'too low'
                low = guess + 1
            elsif answer == 'too high' 
                high = guess - 1
            end

            #not sure if I need this if statement. looks the code will never get to this point
            if high < low
                lying = true
                break
            end
        end

        if high == low
            guess = high
            puts "Yay! I won! Your number is #{guess}, right?"

            loop do
                correct_answer = gets.chomp.downcase
                break if valid_yes_no?(correct_answer)
                puts "Invalid input. Please enter 'yes' or 'no'"
            end

            if correct_answer != 'yes'
                puts "You lied! My guess is correct!"
            end
        end

        puts "Do you want to play again? (yes/no)"
        
        repeat_play = nil
        loop do
            repeat_play = gets.chomp.downcase
            break if valid_yes_no?(repeat_play)
            puts "Invalid input. Please enter 'yes' or 'no'"
        end


        break if repeat_play == 'no'
    end

    puts "Thank you for playing"
end

guessing_game

