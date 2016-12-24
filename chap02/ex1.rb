#!/usr/bin/env ruby
def hoursinayear(year)
  p leap_year?(year) ? 366*24 : 365*24
end

def leap_year?(year)
  (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
end

hoursinayear(1983) #not leap year --> 8760
hoursinayear(1984) #leap year --> 8784
