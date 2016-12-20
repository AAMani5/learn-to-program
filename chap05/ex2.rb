#!/usr/bin/env ruby

puts "Hello there, to whom am I talking to?"
name = gets.chomp
puts "Nice to meet you %s." %[name]
puts "what's your favourite number?"
got_number = gets.chomp
new_number = got_number.to_i+1
puts "i think my fav number is "+new_number.to_s+", as its bigger and better"