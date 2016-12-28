#!/usr/bin/env ruby

def grandfather_clock (&block)
  hour = Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour
  hour.times do
    block.call
  end
end

grandfather_clock {puts 'DONG!'}

grandfather_clock {puts "CHIME"}
