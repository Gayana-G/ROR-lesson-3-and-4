class Book
    attr_reader :author, :title, :count
  
    def initialize(author, title, count)
      @author = author
      @title = title
      @count = count
    end
  
    def to_s
      "author: #{author} title: #{title} count: #{count}"
    end
  end
  
  book_array = []
  book_array << Book.new("Beatrice Potter", "Peter Rabbit", 25)
  book_array << Book.new("Henry Fielding", "Tom Jones", 12)
  book_array << Book.new("Bob Woodward", "All the President's Men", 30)
  
  puts "Sorting alphabetically by author"
  new_array = book_array.sort { |a, b| a.author.downcase <=> b.author.downcase }
  puts new_array
  
  puts "Sorting alphabetically by title"
  new_array = book_array.sort { |a, b| a.title.downcase <=> b.title.downcase }
  puts new_array
  
  puts "Sorting by count"
  new_array = book_array.sort { |a, b| a.count <=> b.count }
  puts new_array
  