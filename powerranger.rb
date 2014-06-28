class Person
	attr_accessor :caffeine_level
	def initialize(name, caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
	end
	def run
		if (@caffeine_level > 0)
			num = rand(1.1..20.0).to_i
			puts "You ran #{num} miles!"
			@caffeine_level -= num
		else
			puts "You don't have enough energy to run. Have some coffee!"
		end
	end
	def scream
		if (@caffeine_level > 0)
			puts "SO MUCH CAFFEINE!!!"
			@caffeine_level -= 1
		else
			puts "You don't have enough energy to scream. Have some coffee!"
		end

	end
	def drink_coffee
		num = rand(1..10)
		@caffeine_level += num
		puts "Your caffeine level is now #{@caffeine_level}."
	end
end
class PowerRanger < Person
	def initialize(person,strength,color)
		@person = person
		@strength = strength
		@color = color
		@caffeine_level = person.caffeine_level
	end
	def punch
		if (@caffeine_level > 0)
			punch_strength = rand(1..10)
			curr_caff = @person.caffeine_level
			if (punch_strength > 5)
				new_caff = (curr_caff - punch_strength)
				@person.caffeine_level = new_caff
				puts "Your caffeine level is now #{new_caff}."
			end
		else
			puts "You need more energy to punch. Have some coffee!"
		end
	end
	def rest
	end
end

class EvilNinja < Person
	def initialize(strength, evilness)
		@strength = strength
		@evilness = evilness
	end
end

emma = Person.new("Emma", 30)
emma.run
emma.scream
emma.drink_coffee