#!/usr/bin/env ruby
def shuffle some_array
  shuffled = [] # to store shuffled result
  already = [] # to store already generated rand numbers
  j = rand(some_array.length) # rand number for the first iteration
  for i in 0..some_array.length-1
    while (already.include? j || i == j) # loop to produce unique rand & != i
      j = rand(some_array.length)
    end
    already << j
    shuffled[j] = some_array[i]
  end
  shuffled
end

test1 = ["zebra","anaconda","rat","cat","bat","dog"]
test2 = ["anaconda","bat","zebra","anaconda"]
test3 = ["Zebra","anaconda","rat","cat","bat","dog"] 
test4 = ["ape","bat","cat","dog","elephant"]
p shuffle(test1)
p shuffle(test2)
p shuffle(test3)
p shuffle(test4)
