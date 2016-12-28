#!/usr/bin/env ruby
# indent the previous working model using global variable
$nesting_depth = -2
def log(block_description, &block)
  $nesting_depth += 2
  puts "#{" " * $nesting_depth}Beginning \"#{block_description}\"..."
  block_returned = block.call
  puts "#{" " * $nesting_depth}...\"#{block_description}\" finished, returning: #{block_returned}"
  $nesting_depth -= 2
end

log("outer block") do
  log ("some little block") do
    log("teeny-tiny block") do
      "lots of love"
    end
    42
  end
  log ("yet another block") do
    "I love Indian food!"
  end
  true
end
