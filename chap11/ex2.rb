#!/usr/bin/env ruby
#to shuffle and store the array of mp3s found
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
#search for mp3 files in music folder
music_names = Dir['/Users/Ashwini/Documents/Music/**/*.mp3']
music_names_shuffled = shuffle(music_names)
filename = "playlist.m3u" # will write the music_names array to this file
#writing each element of array music_names

  File.open filename, 'w' do |f|
    music_names_shuffled.each do |name|
    f.puts name    # using f.write did not add \n at end of each append, hence used f.puts
  end
end
