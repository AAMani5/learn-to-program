#!/usr/bin/env ruby
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

music_names = Dir['/Users/Ashwini/Documents/Music/**/*.mp3']
music_names = music_shuffle(music_names)
filename = "playlistshuffle.m3u"

File.open filename, 'a+' do |f|
  music_names.each do |name|
    f.puts name    # using f.write did not add \n at end of each append, hence used f.puts
  end
end
# need to shuffle between genera or folders etc...
