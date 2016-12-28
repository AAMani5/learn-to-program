#!/usr/bin/env ruby

def roman_to_integer(romannum)
  return "Contains invalid Romamn numerals" if romannum.match(/[^MCDXLVI]/i)
  new_roman = {"M"=> 1000,"CM" => 900,"D" => 500,"CD" => 400,"C" => 100,"XC" => 90,"L" => 50,"XL" => 40,"X" => 10,"IX"=>9,"V" => 5,"IV"=>4,"I" => 1}
  romannum.scan(/m|cm|d|cd|c|xc|l|xl|x|ix|v|iv|i/i).inject(0) do |decimal,roman|
    decimal = decimal + new_roman[roman]
  end
end

p roman_to_integer("MMM") # 3000
p roman_to_integer("MMMDXV") # 3515
p roman_to_integer("MMMCLI") # 3151
p roman_to_integer("CMXL") # 940
p roman_to_integer("IV") # 4
p roman_to_integer("V") # 5
p roman_to_integer("MMQ") # "Contains invalid Romamn numerals"
