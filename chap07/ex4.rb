#!/usr/bin/env ruby
#array of leap year
#def numberof_leap_year(syear,eyear)
#  (syear..eyear).select{|year| (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)}
#end
#leap year flowcontrol
puts 'This program will list the leap years between two stated years'
puts 'Please enter a valid starting year:'
starty = gets.chomp
while (starty.to_i <1)
	puts "starting year must be positive"
	puts "Please enter a valid starting year:"
	starty = gets.chomp
end
puts 'Please enter a valid ending year:'
endy = gets.chomp
while ((endy.to_i <= starty.to_i) or (endy.to_i <0))
	puts "ending year must be positive and greater than starting year"
	puts "Please enter a valid ending year:"
	endy = gets.chomp
end
puts 'Thank you'
puts "The leap years between %s and %s are:" %[starty,endy]
count = 0
startyear = starty.to_i
endyear = endy.to_i
while startyear <= endyear
	if ((startyear%4) == 0)
		if (startyear%100 == 0)
			if (startyear%400 == 0)
				puts startyear
				count = count+1
				startyear = startyear+1
			else
				startyear = startyear+1
			end
		else
			puts startyear
			count = count+1
			startyear = startyear+1
		end	
	else
		startyear = startyear+1
	end
end
if count > 1 
	sp = 'are'
	ss = 's'
else 
	sp = 'is'
	ss = ''
end
puts 'There %s %i leap year%s.' %[sp,count,ss]
if count == 0
	puts 'There are no leap year.'
end