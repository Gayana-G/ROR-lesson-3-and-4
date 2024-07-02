# method to validate an input number
def valid_number?(input_number)
    return false unless input_number.strip.match?(/^\d{1,3}$/)

    number = input_number.to_i
    (1..100).include?(number)
end

# method to ply the game + input validation + input and random numbers comparison
def guessing_game
    secret_number = rand(1..100)

    loop do
        puts "Guess a number from 1 through 100"
        user_guess = gets.chomp
        unless valid_number?(user_guess)
            puts "Invalid input. Please enter a number between 1 and 100 inclusive:"
            next
        end

        user_guess = user_guess.to_i

        if user_guess == secret_number
            puts "Yay! You guessed the correct number"
            break
        else
            if user_guess < secret_number
                puts "Your number is too low. Try again"
            else
                puts "Your number is too high. Try again"
            end
        end
    end
end

# game loop + if want to continue to play with input validation
loop do
    guessing_game

    continue_game = nil
    loop do
        puts "Do you want to play again? (yes/no)"
        continue_game = gets.chomp

        if continue_game.downcase == "yes" || continue_game.downcase == "no"
            break
        else
            puts "Invalid input. Please enter 'yes' or 'no'"
        end
    end
    unless continue_game.downcase == 'yes'
        puts "Thank you for playing"
        break
    end
end

