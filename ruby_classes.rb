#Polishing Ruby

#Exercise 1
{ ruby: 'backend', html: 'frontend' }.invert
10/3
['a', 'b', 'c', 'd'].slice(1, 2)

#class.rb 
class Pet
	def set_noise(noise)
		@noise = noise
	end
	def set_type(type)
		@type = type
	end
	def speak
		puts "#{@noise}!"
	end
	def walk(distance)
		puts "Walked #{distance}!"
	end
	def play
		puts "Your pet is playing!"
	end
end

class Animal
	def initialize(name,type)
		@name = name
		@type = type
	end
	def name
		puts "This animal is named #{@name}"
	end
	def type
		puts "#{@name} is a #{@type}"
	end
end

dog = Pet.new
puts(dog)
dog.set_noise("Bark")
dog.speak
