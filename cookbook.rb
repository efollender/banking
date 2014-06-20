class Cookbook
	attr_accessor :title
	attr_accessor :recipes
	def initialize(title)
		@title = title
		@recipes = []
	end
	def add_recipe(new_recipe)
		@recipes << new_recipe
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
end

class Recipe
	attr_accessor :title
	attr_accessor :ingredients
	attr_accessor :steps
	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean burrito",["Tortilla","bean"],["heat beans","place beans in tortilla", "roll up"])
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