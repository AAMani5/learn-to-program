#!/usr/bin/env ruby
# Extend Integer & Array class
# Extending Integer class
class Integer

  def to_roman
    if self <= 0
      return "Roman numerials applicable only for positive integers"
    end
    # store the conventions in a hash
    new_roman = {1000 => "M",900 => "CM",500 => "D",400 => "CD",100 => "C",90 => "XC",50 => "L",40 => "XL",10 => "X",9=>"IX",5 => "V",4=>"IV",1 => "I"}
    remaining = self
    #divide the num starting from 1000 to 1 and get quotient and remainder
    # quotient (variable whole) will give the number of letters to add to result
    #remainder (variable remaining )is used in the next iteration
    new_roman.inject("") do |result, (decimal,roman)|
    whole, remaining = remaining.divmod(decimal)
    result << roman * whole
    end
  end

  def factorial
    (self >= 0) ? (self <= 1) ? 1 : (self * ((self-1).factorial))  :  "factorials cannot be calculated for negative numbers"
  end

end

p 4.to_roman # IV
p 99.to_roman # XCIX
p 5.factorial # 120
p 4.factorial # 24
p 3.factorial # 6



# Extending Array class
class Array
  def shuffle
    shuffled = [] # to store shuffled result
    already = []  # to store already generated rand numbers
    random_index = rand(self.length) # rand number for the first iteration
    for index in 0..self.length-1
      while ((already.include? random_index) || (index == random_index)) # loop to produce unique rand & != i
        if ((random_index == self.length-1) && (already.sort == (0..self.length-2).to_a))
          break
        end
        random_index = rand(self.length)
      end
      already << random_index
      shuffled[random_index] = self[index]
    end
  shuffled
  end
end
test1 = ["zebra","anaconda","rat","cat","bat","dog"]
test2 = ["anaconda","bat","zebra","anaconda"]
test3 = ["Zebra","anaconda","rat","cat","bat","dog"]
test4 = ["ape","bat","cat","dog","elephant"]
p test1.shuffle
p test2.shuffle
p test3.shuffle
p test4.shuffle
