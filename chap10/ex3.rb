#!/usr/bin/env ruby
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
 		stringmil = englishNum write
 		numstring = numstring + stringmil + '-Million '
 	end

 	#extract the thousandth digit
 	write = left/1000
 	left = left - (write*1000)
 	if (write > 0)
 		string1000 = englishNum write
 		numstring = numstring + string1000 + '-Thousand '
 	end

 	#extract the 100th digit
 	write = left/100
	left = left - (write*100)
 	if (write>0)
 		string100 = englishNum write
 		numstring = numstring + string100 + '-Hundred '
 	end

 	#a method to extract 100th digit or higher. can a method return more than one value? No
 	#def extract digitname digitnum left
 	#	write = left/digitnum
 	#	left = left - (write*digitnum)
 	#	if (write>0)
 	#		numstring = englishNum write
 	#		numstring = numstring + '-digitname'
 	#	end
 	#	numstring
 	#end

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
puts englishNum 5
puts englishNum 10
puts englishNum 100
puts englishNum 999
puts englishNum 1001
puts englishNum 50000
puts englishNum 1000002
puts englishNum(1000000000000)
