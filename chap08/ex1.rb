#!/usr/bin/env ruby
puts "please type as many words as you want but only one word per line. Press enter on a empty line to end"
input = gets.chomp
array = []
while (input.downcase !='')
	array.push input
	input = gets.chomp
end
i = 0
j = 0
while (j < array.length)
	while (i < (array.length-1))
		if array[i].downcase > array[i+1].downcase
		hold = array[i]
		array[i] = array[i+1]
		array[i+1] = hold
		i = i+1
		else
		i =i+1
		end 
	end
	j = j+1
	i = 0
end
puts array

