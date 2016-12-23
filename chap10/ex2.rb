#!/usr/bin/env ruby
def dictionary_sort some_array # This "wraps" recursive_sort.
recursive_sort some_array, []
end

def recursive_sort(unsorted_array, sorted_array)
  return sorted_array if unsorted_array.empty?
  index_of_min = get_min_value(unsorted_array)
  #p index_of_min
  sorted_array << unsorted_array[index_of_min]
  unsorted_array.delete_at(index_of_min)
  recursive_sort(unsorted_array, sorted_array)
end

def get_min_value(unsorted_array)
  for i in 0..unsorted_array.length-1
    greater = false
    for j in 1..unsorted_array.length-1
      #p "#{i} #{j}"
      if unsorted_array[i].downcase > unsorted_array[j].downcase
        #p "#{unsorted_array[i]} > #{unsorted_array[j]}"
        greater = true
        break
      end
    end
    if greater == false
      #p "#{i} false"
      return i
    end
  end
end

test1 = ["zebra","anaconda","rat","cat","bat","dog"]
test2 = ["anaconda","bat","zebra","anaconda"]
test3 = ["Zebra","anaconda","rat","cat","bat","dog"] # capital comes before small
#p get_min_value(test1)
p dictionary_sort(test1)
p dictionary_sort(test2)
p dictionary_sort(test3)
