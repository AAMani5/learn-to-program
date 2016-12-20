#!/usr/bin/env ruby
page = 'page'
chap = 'Chapter'
lineWidth = 50
puts ('Table of Contents'.center(lineWidth))
puts ('%s 1: Getting Started'.ljust(lineWidth/2) + '%s 1'.rjust(lineWidth/2)) %[chap, page]
puts ('%s 2: Numbers'.ljust(lineWidth/2) + '%s 9'.rjust(lineWidth/2)) %[chap, page]
puts ('%s 3: Letters'.ljust(lineWidth/2) + '%s 13'.rjust(lineWidth/2)) %[chap, page]