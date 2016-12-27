#!/usr/bin/env ruby
def shuffle some_array
  shuffled = [] # to store shuffled result
  already = []  # to store already generated rand numbers
  random_index = rand(some_array.length) # rand number for the first iteration
  for index in 0..some_array.length-1
    while ((already.include? random_index) || (index == random_index)) # loop to produce unique rand & != i
      if ((random_index == some_array.length-1) && (already.sort == (0..some_array.length-2).to_a))
        break
      end
      random_index = rand(some_array.length)
    end
    already << random_index
    shuffled[random_index] = some_array[index]
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
