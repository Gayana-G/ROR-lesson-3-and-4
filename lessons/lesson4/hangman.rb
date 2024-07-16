def hangman(word, letters)
    word.chars.map{ |char| letters.include?(char) ? char : "_"}.join
end

puts hangman("bob", ["b"])  
puts hangman("alphabet", ["a", "h"]) 
puts hangman("hello", ["e", "l"]) 