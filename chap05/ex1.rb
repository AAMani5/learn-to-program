#!/usr/bin/env ruby
puts 'Hello there, What\'s your first name?'
fn = gets.chomp
puts 'Now, let me get your middle name?'
mn = gets.chomp
puts 'and finally can I have your last name?'
ln = gets.chomp
puts 'Good morning '+fn+' '+mn+' '+ln+'.'+' How are you doing today?'
puts "Good morning #{fn} #{mn} #{ln}. How can I help you today?"
puts "Please to meet you %s %s %s. How may I assist you?" %[fn,mn,ln]
