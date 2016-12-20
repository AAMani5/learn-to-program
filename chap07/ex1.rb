#!/usr/bin/env ruby
#start with 99 beers
beers = 99
while beers.to_i >=0
	puts "%s bottles of beer on the wall, %s bottles of beer." %[beers,beers]
	beers = beers.to_i - 1
	if beers.to_i == 0
		beers = 'no more' # replace 0 with no more
	end
	if beers.to_i < 0 # if beer becomes negative (-1)
		puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
		puts ''
	else
		puts "Take one down and pass it around, %s bottles of beer on the wall." %[beers]
		puts ''
	end
end