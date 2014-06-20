class Cookbook
	def initialize(title)
		@title = title
	end
	def title
		@title
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
	def ingredients
		@ingredients
	end
	def steps
		@steps
	end
end

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean burrito",["Tortilla","bean"],["heat beans","place beans in tortilla", "roll up"])
puts mex_cuisine.title # Mexican Cooking
puts burrito.title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]