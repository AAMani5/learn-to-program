#!/usr/bin/env ruby
#Baby dragon - we can feed it, put it to bed, talk it on walks. We can name it(parameter)
#internally Dragon will keep track of if its hungry, needs to go.
class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuffInBelly = 10 #its full
		@stuffInIntestine = 0 #it doesn't need to go
		puts @name + ' is born.'
		dispatch # calls dispatch method when a new dragon is created
	end

	def dispatch
		while true
		  puts "Would you like to feed, walk, toss, rock, make_him_sleep or exit?"
		  @cmd = gets.chomp.downcase
		  if @cmd == 'feed'   #instead of checking each input string
			  feed              #we can use respond_to method to see if dragon class
		  elsif @cmd == 'walk' # responds to that method 
			  walk
			elsif @cmd == "make_him_sleep"
				putToBed
			elsif @cmd == "toss"
				toss
			elsif @cmd == "rock"
        rock
			elsif @cmd == "exit"
				exit
		  else
			  puts 'Sorry, what did you say?'
		  end
	  end
	end

	def feed
		puts 'You feed '+ @name + '.'
		@stuffInBelly = 10
		passageOfTime
	end

	def walk
		puts 'You walk ' + @name + '.'
		@stuffInIntestine = 0
		passageOfTime
	end

	def putToBed
		puts 'You put ' + @name + ' to bed.'
		@asleep = true
		3.times do
			if @asleep
				passageOfTime
			end
			if @sleep
				puts @name + ' snores, filling the room with smoke.'
			end
		end
		if @asleep
			@asleep = false
			puts @name + ' wakes up slowly.'
		end
	end

	def rock
		puts 'You rock ' + @name + ' gently.'
		@asleep = true
		puts 'He briefly dozes off...'
		passageOfTime
		if @asleep
			@asleep = false
			puts '... but wakes when you stop.'
		end
	end

	def toss
		puts 'You toss ' + @name + ' up in the air.'
		puts 'He giggles, which singes your eyebrows.'
		passageOfTime
	end

	private

	def hungry?
		@stuffInBelly <= 2
	end

	def poopy?
		@stuffInIntestine >= 8
	end

	def passageOfTime
		if @stuffInBelly >0
			@stuffInBelly -= 1
			@stuffInIntestine += 1
		else
			if @asleep
				puts 'It wakes up suddenly!'
			end
		puts @name + ' is starving! In desperation, it ate YOU!'
		exit
		end

		if @stuffInIntestine >= 10
			@stuffInIntestine = 0
			puts 'Whoops! ' + @name + ' had an accident...'
		end

		if hungry?
			if @sleep
				@sleep = false
				puts 'It wakes up suddenly!'
			end
			puts @name + "'s stomach grumbles"
		end

		if poopy?
			if @asleep
				@sleep = false
				puts 'It wakes up suddenly!'
			end
			puts @name + ' does the poopy dance...'
		end
	end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed
