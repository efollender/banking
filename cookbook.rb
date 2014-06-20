class Cookbook
	def initialize(title)
		@title = title
	end
	def title
		@title
	end
	def title=(new_title)
		@title = new_title
	end
end

class Recipe
	def initialize(title,ingredients,steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end
	def title
		@title
	end
	def title=(new_title)
		@title = new_title
	end
	def ingredients
		@ingredients
	end
	def ingredients=(new_ingredients)
		@ingredients = new_ingredients
	end
	def steps
		@steps
	end
	def steps=(new_steps)
		@steps = new_steps
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