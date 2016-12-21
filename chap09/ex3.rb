#!/usr/bin/env ruby

def new_roman_numeral(num)
  if num <= 0
    return "Please enter a number from 1"
  end
  # store the conventions in a hash
  new_roman = {1000 => "M",900 => "CM",500 => "D",400 => "CD",100 => "C",90 => "XC",50 => "L",40 => "XL",10 => "X",9=>"IX",5 => "V",4=>"IV",1 => "I"}
  remaining = num
  #divide the num starting from 1000 to 1 and get quotient and remainder
  # quotient (variable whole) will give the number of letters to add to result
  #remainder (variable remaining )is used in the next iteration
  new_roman.inject("") do |result, (decimal,roman)|
  whole, remaining = remaining.divmod(decimal)
  result << roman * whole
  end
end

p new_roman_numeral(3000) # "MMM"
p new_roman_numeral(3515) # "MMMDXV"
p new_roman_numeral(3151) # "MMMCLI"
p new_roman_numeral(940) # "CMXL"
p new_roman_numeral(4) # "IV"
p new_roman_numeral(5) # "V"
