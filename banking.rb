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
	@@all_banks = []
	def initialize(name)
		@name = name
		@accounts = {}
		@@all_banks << name
	end	
	def open_account(person)
		@accounts[person.name] = 0
		puts "A new account has been created for #{person.name}!"
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
		person.cash = (person.cash-amount)
		puts "The new balance for #{person.name} is #{@accounts[person.name]}"
	end
	def transfer(person_from,bank_to,person_to,amount)
		if ( @accounts[person_from.name] > amount )
			@accounts[person_from.name] -= amount
			bank_to.accounts[person_to.name] += amount
			puts "#{person_from.name}'s new balance is #{@accounts[person_from.name]}."
			puts "#{person_to.name}'s new balance is #{bank_to.accounts[person_to.name]}."
		else
			puts "Insufficient funds."
		end
	end
	def bank_balance
		total = 0
		@accounts.each {|k,v| total+= v}
		puts "#{@name} Bank has a current balance of #{total}."
	end
end

emma = Person.new("Emma", 12500)
brent = Person.new("Brent", 30700)
chase = Bank.new("Chase")
valley = Bank.new("Valley")
chase.open_account(brent)
valley.open_account(emma)
valley.deposit(emma, 3000)
chase.deposit(brent, 12000)
chase.withdraw(brent,500)
valley.withdraw(emma, 6000)
chase.transfer(brent,valley,emma,2000)
kait = Person.new("Kait", 7000)
valley.open_account(kait)
valley.deposit(kait,5500)
valley.bank_balance
