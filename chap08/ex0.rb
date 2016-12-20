#!/usr/bin/env ruby
puts "please type as many words as you want but only one word per line"
input = gets.chomp
array = []
while (input.downcase !='')
	array.push input.downcase
	input = gets.chomp
end
puts array.sort

