class Person
	attr_reader :name
	attr_accessor :cash
	def initialize(name,cash)
		@name = name
		@cash = cash
	end
end
class Bank
	attr_accessor :accounts
	def initialize(name)
		@name = name
		@accounts = {}
	end	
	def open_account(person)
		@accounts[person.name] = person.cash
	end
	def withdraw(person,amount)
		if (@accounts[person.name] > amount)
			@accounts[person.name] -= amount
			puts "The new balance for #{person.name} is #{@accounts[person.name]}"
		else
			puts "Insufficient funds."
		end
	end
	def deposit(person,amount)
		@accounts[person.name] += amount
		puts "The new balance for #{person.name} is #{@accounts[person.name]}"
	end
	def transfer(person_from,bank_to,person_to,amount)
		@accounts[person_from.name] -= amount
		bank_to.accounts[person_to.name] += amount
		puts "#{person_from.name}'s new balance is #{@accounts[person_from.name]}."
		puts "#{person_to.name}'s new balance is #{bank_to.accounts[person_to.name]}."
	end
end

