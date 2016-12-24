#!/usr/bin/env ruby
def minsindecade(start_year,end_year)
  if end_year > start_year && end_year - start_year == 9
    p (10*365*24*60 + numberof_leap_year(start_year,end_year)*24*60)
  else
    p "Either input not a decade or end year is not greater than strat year"
  end
end

def numberof_leap_year(syear,eyear)
  (syear..eyear).select{|year| (year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)}.length
end


minsindecade(1981,1990) # leap years [1984,1988] 5258880
minsindecade(2000,2009) # leap years [2000,2004,2008] 5260320
minsindecade(2000,2010) # over 10 years
minsindecade(2000,2008) # under 10 yeras
minsindecade(2009,2000) #end year < start year
minsindecade(2008,2000) # end year < start year & length less than 10 years
