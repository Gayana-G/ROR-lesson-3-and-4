def collect_hash
    my_hash = {}
    5.times do
      print "Enter a key: "
      key = gets.chomp
      print "Enter a value: "
      value = gets.chomp
      my_hash[key] = value
    end
    my_hash
  end
  
  def print_keys_and_values(hash)
    keys = hash.keys
    values = hash.values
    puts "Keys: #{keys.inspect}"
    puts "Values: #{values.inspect}"
  end
  
  my_hash = collect_hash
  print_keys_and_values(my_hash)