#!/usr/bin/env ruby
# profiling on/off without deleting the method
def profile (block_description, &block)
  # a switch to turn it on/off
  want_profiling = false # set it true if one wants profoling

  if want_profiling
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    p "#{block_description}: #{duration}"
  else
    block.call
  end
  
end

#e.g 1
profile '25000 doublings' do
  number = 1
  25000.times do number = number + number
  end
  puts "#{number.to_s.length} digits"
  # That's the number of digits in this HUGE number.
end

#e.g 2
profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end
