class Sum1
    attr_accessor :total
  
    def initialize(a, b)
      @total = a + b
    end
  end
  
  class Sum2
    def initialize(a, b)
      @a = a
      @b = b
    end
  
    def new_total
      @a + @b
    end
  end
  
  sum1_instance = Sum1.new(5, 6)
  sum2_instance = Sum2.new(5, 6)
  
  puts "Total for Sum1: #{sum1_instance.total}"
  puts "New total for Sum2: #{sum2_instance.new_total}"
  