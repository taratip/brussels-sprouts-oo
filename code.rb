class Ingredient
  attr_reader :quantity, :unit, :name
  def initialize(quantity, unit, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end
end

class Recipe
  attr_reader :name, :instructions, :ingredients

  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = []
    instructions.each do |instruction|
      @instructions << instruction
    end
    @ingredients = []
    ingredients.each do |ingredient|
      @ingredients << ingredient.summary
    end
  end

  def summary
    str = "Name: #{name}\n\n"
    str += "Ingredients\n"
    @ingredients.each do |ingredient|
        str += "- #{ingredient}\n"
    end
    str += "\nInstructions\n"
    @instructions.each_with_index do |instruction, index|
      str += "#{index + 1}. #{instruction}\n"
    end
    str
  end
end

name = "Roasted Brussels Sprouts"

# Note how below we are creating new Ingredient objects and saving them inside the `ingredients` array. This way we have information about state and behavior for each ingredient that we wouldn't get just by having a string representing it.
ingredients = [
    Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
    Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
    Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
    Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
    ]

recipe = Recipe.new(name,instructions,ingredients)
puts recipe.summary

recipe_name = "Mouse's Macaroni and Cheese"
ingredients_list = [
  Ingredient.new(1.5,"cup(s)", "uncooked elbow macaroni"),
  Ingredient.new(0.25, "cup(s)", "butter"),
  Ingredient.new(2, "tablespoon(s)", "all-purpose flour"),
  Ingredient.new(1, "teaspoon(s)", "mustard power"),
  Ingredient.new(1, "teaspoon(s)", "ground black pepper"),
  Ingredient.new(2, "cup(s)", "milk"),
  Ingredient.new(8, "ounce(s)", "American chesse, cubed"),
  Ingredient.new(8, "ounce(s)", "processed cheese food, cubed"),
  Ingredient.new(0.25, "cup(s)", "seasoned dry bread crumbs")
]
directions = [
  "Preheat oven to 400 degrees F. Butter a 1 1/2 quart casserole dish. ",
  "Bring a saucepan of lightly salled water to a boil. ",
  "Add macaroni, and cook until not quite done, about 6 minutes. Drain.",
  "In a separate saucepan, melt the butter over medium heat. ",
  "Blend in the flour, mustard powder, and pepper until smooth. ",
  "Slowly stir in the milk, beating out any lumps. ",
  "Add the American and processed cheeses, and stir constantly until the sauce is thick and smooth.",
  "Drain noodles, and stir them into the cheese sauce. Transfer the mixture to the prepared casserole dish. ",
  "Sprinkle bread crumbs over the top.",
  "Cover the dish, and bake for 20 to 25 minutes, or until sauce is thick and bubbly."
]
puts ""
macaroni = Recipe.new(recipe_name, directions, ingredients_list)
puts macaroni.summary
