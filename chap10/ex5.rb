#!/usr/bin/env ruby
#start with 99 beers
#this method translates numbers to english characters
def englishNum num
	#no negative numbers allowed
	if num < 0
		return "Please enter a number greater than zero"
	end
	#if num > 100
	#	return "Please enter a number less than or equal to 100."
	#end
	numstring = '' #this is returned
	left = num
 	onesPlace =['One','Two','Three','Four','Five','Six','Seven','Eight','Nine']
 	teen = ['Eleven','Twelve','Thirteen','Fourteen','Fifteen','Sixteen','Seventeen','Eighteen','Nineteen']
 	tensPlace = ['Ten','Twenty','Thirty','Fourty','Fifty','Sixty','Seventy','Eighty','Ninty']

 	#extract the millionth digit
 	write = left/1000000
 	left = left - (write*1000000)
 	if (write > 0)
 		numstring = englishNum write
 		numstring = numstring + '-million '
 	end

 	#extract the thousandth digit
 	write = left/1000
 	left = left - (write*1000)
 	if (write > 0)
 		numstring = englishNum write
 		numstring = numstring + '-thousand '
 	end

 	#extract the 100th digit
 	write = left/100
	left = left - (write*100)
 	if (write>0)
 		numstring = englishNum write
 		numstring = numstring + '-hundred '
 	end

 	#extract the 10th digit
 	write = left/10
 	left = left - (write*10)
 	if write > 0
 		if (write == 1 and left >0)
 			numstring = numstring + teen[left-1]
 			left = 0
 		else
 			numstring = numstring + tensPlace[write-1]
 		end
 	end

 	#extract the unit digit
 	write = left
 	left = 0
 	if (write >0)
 		numstring = numstring + onesPlace[write-1]
 	end
 	numstring
end
start = 99
beers = 99
while beers.to_i >=0
	string1 = englishNum beers.to_i
	if beers == 0
		string1 = 'no more'
	end
	puts "%s bottles of beer on the wall, %s bottles of beer." %[string1, string1]
		beers = beers.to_i - 1
	string2 = englishNum beers.to_i
	if beers.to_i == 0
		string2 = 'no more' # replace 0 with no more
	end
	if beers.to_i < 0 # if beer becomes negative (-1)
		puts "Go to the store and buy some more, #{englishNum(start)} bottles of beer on the wall."
		puts ''
	else
		puts "Take one down and pass it around, %s bottles of beer on the wall." %[string2]
		puts ''
	end
end
