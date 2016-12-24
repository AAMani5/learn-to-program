#!/usr/bin/env ruby
def ageinseconds(birthyear)
  p (Time.now - Time.new(birthyear)).floor
end

ageinseconds(1983) #approx (2016-1983)*365*24*60*60 = 1040688000
ageinseconds(2000) #approx (2016-2000)*365*24*60*60 = 504576000
