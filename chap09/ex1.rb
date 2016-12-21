#!/usr/bin/env ruby
#ask question, expect yes or no answer, don't store the answer, just return it
def ask question
		while true
				puts question
				reply = gets.chomp.downcase
				if (reply == 'yes' || reply == 'no')
					if reply == 'yes'
						return true
					else
						return false
					end
				else
					puts 'Please answer "yes" or "no"'
				end
		end
end

puts 'Hello and Thank you'
puts
ask 'Do you like tacos?'
ask 'Do you like burritos?'
wetsBed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts
puts 'Debriefing'
puts 'Thank you for ...'
puts
puts wetsBed
