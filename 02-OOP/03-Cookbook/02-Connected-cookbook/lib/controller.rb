require_relative "recipe"
require_relative "display"

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    recipes = @cookbook.recipes
    @display.print_recipes(recipes)
  end

  def create
    recipe = @display.create_new_recipe
    @cookbook.add(Recipe.new(recipe))
  end

  def destroy
    recipe_to_destroy = @display.get_recipe_name_to_destroy
    @cookbook.remove(recipe_to_destroy)
  end

end
