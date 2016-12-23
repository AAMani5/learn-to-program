#!/usr/bin/env ruby
#this method translates numbers to english characters
def wedNum num
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
 		stringmil = wedNum write
 		numstring = numstring + stringmil + '-Million '
 		if left > 0
 			numstring = numstring + 'and '
 		end
 	end

 	#extract the thousandth digit
 	write = left/1000
 	left = left - (write*1000)
 	if (write > 0)
 		string1000 = wedNum write
 		numstring = numstring + string1000 + '-Thousand '
 		if left > 0
 			numstring = numstring + 'and '
 		end
 	end

 	#extract the 100th digit
 	write = left/100
	left = left - (write*100)
 	if (write>0)
 		string100 = wedNum write
 		numstring = numstring + string100 + '-Hundred '
 		if left > 0
 			numstring = numstring +'and '
 		end
 	end

 	#extract the 10th digit
 	write = left/10
 	left = left - (write*10)
 	if write > 0
 		if (write == 1 and left >0)
 			numstring = numstring +teen[left-1]
 			left = 0
 		else
 			numstring = numstring +tensPlace[write-1]
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
puts wedNum 102
puts wedNum 1000
puts wedNum 1981
puts wedNum 2011
puts wedNum 2116
puts wedNum 50050
puts wedNum 1000002
puts wedNum 2532198
