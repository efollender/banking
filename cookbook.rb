class Cookbook
	attr_accessor :title
	attr_accessor :recipes
	def initialize(title)
		@title = title
		@recipes = []
		@meal_types = Hash.new
	end
	def add_recipe(new_recipe)
		@recipes << new_recipe
		meal = new_recipe.meal_type
		if @meal_types[meal].nil?
			@meal_types[meal] = []
		end
		@meal_types[meal].push(new_recipe.title)
		puts "Added a recipe to the collection: #{new_recipe.title}"
	end
	def recipe_titles
		@recipes.each do |recipe|
			puts recipe.title
		end
	end
	def recipe_ingredients
		@recipes.each do |recipe|
			puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"
		end
	end
	def print_cookbook
		@recipes.each do |recipe|
			puts recipe.title
			puts "Ingredients: #{recipe.ingredients.join(", ")}"
			count = 1
			recipe.steps.each do |step|
				puts "#{count}. #{step}"
				count+=1
			end
		end
	end
	def sort_cookbook
		sorted_recipes = @recipes.sort {|a,b| a.title <=> b.title}
		sorted_recipes.each do |recipe|
			puts recipe.title
		end
	end
	def get_meal(meal)
		@meal_types[meal].each do |recipe|
			puts recipe
		end
	end
end

class Recipe
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps
	attr_accessor :meal_type
	def initialize(title,ingredients,steps,meal_type)
		@title = title
		@ingredients = ingredients
		@steps = steps
		@meal_type = meal_type
	end
	def print_recipe
		puts @title
		puts "Ingredients: #{@ingredients.join(", ")}"
		count = 1
		@steps.each do |step|
			puts "#{count}. #{step}"
			count+=1
		end
	end
end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean burrito",["Tortilla","bean"],["heat beans","place beans in tortilla", "roll up"],"Dinner")
puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]
mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes
burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]
p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]
mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]
mex_cuisine.recipe_titles # Veggie Burrito
mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "bean"]
burrito.print_recipe
nachos = Recipe.new("Nachos",["tortilla chips", "cheese", "refried beans", "salsa"],["Place chips in pan","Layer remaining ingredients on chips","Bake at 350 until cheese is melted and golden"],"Dinner")
mex_cuisine.add_recipe(nachos)
mex_cuisine.print_cookbook
mex_cuisine.sort_cookbook
mex_cuisine.get_meal("Dinner")