#!/usr/bin/env ruby
class Die

	def initialize
		@cheat = false
		roll
	end

	def roll
		if @cheat ==false
		@numberShowing = 1 + rand(6)
		end
	end

	def showing
		@numberShowing
	end

	def cheat side
		side = side.to_i
		if (side >0 and side <7)
			@numberShowing = side
			@cheat = true
		else
			puts 'Please use numbers from 1 to 6'
		end
	end
end

die = Die.new
puts die.showing
die.roll
puts die.showing
die.cheat 5
puts die.showing
die.roll
puts die.showing
die.cheat 7
puts die.showing
die.cheat 'side'
puts die.showing
