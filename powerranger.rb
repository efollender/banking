class Person
	def initialize(name, caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
	end
	def run
		num = rand(1.1..20.0).to_i
		puts "You ran #{num} miles!"
		@caffeine_level -= num
	end

	def scream
		puts "SO MUCH CAFFEINE!!!"
		@caffeine_level -= 1
	end

	def drink_coffee
		num = rand(1..10)
		@caffeine_level += num
		puts "Your caffeine level is now #{@caffeine_level}."
	end
end

class PowerRanger
end

class EvilNinja
end

emma = Person.new("Emma", 30)
emma.run
emma.scream
emma.drink_coffee