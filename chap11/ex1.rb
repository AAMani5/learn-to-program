#!/usr/bin/env ruby
#moving to the desired dir where we need the pictures
Dir.chdir '/Users/Ashwini/Documents/Pictures'
#put all .jpg files from F dir & sub dir (memory stick in this case )in an array named pic_names
pic_names = Dir['/Users/Ashwini/Documents/Website/test_site/pic/*.jpg']
#puts pic_names #printed this just to see the output formate
puts "What would you like to call this batch?"
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:   "
#set up a counter
pic_number = 1
pic_names.each do |name|
  print '.' # similar to a progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist? new_name
    puts
    puts "#{new_name} file already exists.Quiting program!"
    exit
  else
    File.rename name, new_name
    # puts "#{name} renamed to #{new_name}" # just to see the naming convention
    pic_number = pic_number + 1
  end
end # end for each do
  puts
  puts "picture transfer completed."
