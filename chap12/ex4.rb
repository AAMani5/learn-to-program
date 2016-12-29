#!/usr/bin/env ruby
def birthday_helper
  filename = "birthday_list.txt"
  birth_dates = {}
  list = File.read filename
  list.each_line do |l|
    name, date, year = l.split(',')
    birth_dates[name.downcase] = Time.new(year,date.split[0],date.split[1])
  end
  #p birth_dates
  p "Welcome to Birthday Helper"
  p "Please enter a persons name to check from the list"
  name = gets.chomp
  if birth_dates[name.downcase] == nil
    p "sorry that name does not exist in the list"
  else
    present = Time.new
    persons_birthday = birth_dates[name.downcase]
    age = present.year - persons_birthday.year
    age += 1 if (present.month > persons_birthday.month || present.month == persons_birthday.month && present.day > persons_birthday.day)
    if present.day == persons_birthday.day && persons_birthday.month == present.month
      p "#{name}'s birthday is today. He is #{age}.'"
    else
     p "#{name}'s next birthday is on #{birth_dates[name.downcase].strftime("%b %e")}. He will be #{age}"
    end
  end
end

birthday_helper
#for strftime --> http://ruby-doc.org/core-2.2.0/Time.html#method-i-strftime
