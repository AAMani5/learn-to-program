#!/usr/bin/env ruby
puts 'Hello, world!'
puts ''
puts 'Good-bye.'
puts 'I like' + 'apple pie.'
puts 'I like ' + 'apple pie.'
puts 'I like' + ' apple pie.'
puts 'blink ' * 4
#12 vs '12'
puts 12 + 12
puts '12' + '12'
puts '12 + 12'
puts 2 * 5
puts '2' * 5
puts '2 * 5'
#problem
##puts '12' + 12 # == puts 'Betty' + 12 should give error
##puts '2' * '5' # == puts 'Fred' * 'John' should throw an error
#using ' within '' escape it with \
puts 'You\'re swell!'
puts 'backslash at the end of a string: \\' # backslash escapes backslash
puts 'up\\down' # since \ does not escape d, this line can be written as below
puts 'up\down'
