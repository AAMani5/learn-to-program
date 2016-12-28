#!/usr/bin/env ruby
class Orangetree

	def initialize
		@height = 0.5 #new tree is 0.5 ft tall
		@orangeCount = 0 #has no oranges
		@age = 0
		puts "A new orange tree was planted. Its height is %f ft and number of oranges is %i" %[@height, @orangeCount]
	end

	def height
		puts "Tree's height is %i at age %i" %[@height, @age]
	end

	def countTheOranges
		if @age < 1
			puts "Tree hasn't reached fruit bearing age"
		else
			puts "Number of oranges on the tree is %i."%[@orangeCount]
		end
	end

	def pickAnOrange
		if @orangeCount >0
			@orangeCount -= 1
			puts 'One orange picked. It was delicious'
		else
			puts 'No oranges left to pick.'
		end
	end

	def oneYearPasses
		@age += 1 #increase age by 1 year
		@height = @height + 2 #growns 2ft each year
		@orangeCount = 0 #all unpicked fruits drop
		puts 'One year passes... tree growes taller, drops old fruits and bears new fruits!'
		#tree only lives for 5 years
		if @age >5
			puts 'Tree reaches old age and dies :('
			exit
		end
		if (@age >=1 and @age <=3)
			@orangeCount = 10
		elsif (@age >3 and @age<=5)
			@orangeCount = 15
		end
	end
end

tree = Orangetree.new
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.countTheOranges
tree.height
tree.oneYearPasses
