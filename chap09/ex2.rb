#!/usr/bin/env ruby

def old_roman_numeral(num)
  if num <= 0
    return "Please enter a number from 1"
  end
  # store the conventions in a hash
  old_roman = {1000 => "M",500 => "D",100 => "C",50 => "L",10 => "X",5 => "V",1 => "I"}
  remaining = num
  #divide the num starting from 1000 to 1 and get quotient and remainder
  # quotient (variable whole) will give the number of letters to add to result
  #remainder (variable remaining )is used in the next iteration
  old_roman.inject("") do |result, (decimal,roman)|
  whole, remaining = remaining.divmod(decimal)
  result << roman * whole
  end
end

p old_roman_numeral(3000) # "MMM"
p old_roman_numeral(3515) # "MMMDXV"
p old_roman_numeral(3151) # "MMMCLI"
p old_roman_numeral(4) # "IIII"
p old_roman_numeral(5) # "V"

#referred to http://stackoverflow.com/questions/26092510/roman-numerals-in-ruby
