#!/usr/bin/env ruby
chap = 'Chapter'
number = ['1','2','3']
chapname = ['Getting started','Numbers','Letters']
pg = 'page'
page = ['1','9','13']
lineWidth = 50
puts ('Table of Contents'.center(lineWidth))
i = 0
while i <= (page.length-1)
#puts ("%s %s: %s".ljust(lineWidth/2) + "%s %s".rjust((lineWidth/2))) %[chap,number[i],chapname[i],pg,page[i]]
puts ('%s %s: %s'.ljust(lineWidth/2) + '%s %s'.rjust(lineWidth/2)) %[chap, number[i], chapname[i], pg, page[i]]
i = i+1
end
puts
#puts "hello".rjust(60, '12345')
#puts "hellos".rjust(60, '12345')
