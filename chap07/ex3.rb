#!/usr/bin/env ruby
# deaf grandma. exit only if 3 consecutive rows of BYE
puts "welcome to grandma's house"
count = 0
def reset var
	0
end
while (count < 3)
	input1 = gets.chomp
	if input1 != input1.upcase
		count = reset 0
		puts "HUH?! SPEAK UP, SONNY!"
	else
		#year = 1930+ rand(21)
		puts "NO, NOT SINCE %i!" %[rand(1930..1951)] #%[year.to_i]
		if input1 == "BYE"
			count = count+1
		else
			count = reset 0
		end
	end
	#if (input1 == "BYE" and input2=="BYE" and input3=="BYE")
	#	puts "OK BYE"
	#end
end