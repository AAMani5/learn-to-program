#!/usr/bin/env ruby
# deaf grandma
input = gets.chomp
while input != "BYE"
	if input != input.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		input = gets.chomp
	else
		#year = 1930+ rand(21)
		puts "NO, NOT SINCE %i!" %[rand(1930..1951)] #%[year.to_i]
		input = gets.chomp
	end
	if input == "BYE"
		puts "BYE SUNNY"
	end
end