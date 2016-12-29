#!/usr/bin/env ruby
# SPANK for each birthday
puts "Please enter your birth year:"
year = gets.chomp.to_i
puts "Please enter your birth month (1-12):"
month = gets.chomp.to_i
puts "Please enter your birth date (1-31):"
date = gets.chomp.to_i
puts
now = Time.new
yDiff = now.year - year
mDiff = now.month - month
dDiff = now.day - date
if mDiff < 0
	dDiff = -(dDiff + (mDiff*30))
	yDiff = yDiff - 1
	mDiff = 12 + mDiff
end
puts "You are %i years %i months and %i days old" %[yDiff, mDiff, dDiff]
yDiff.times do
	puts 'SPANK'
end
