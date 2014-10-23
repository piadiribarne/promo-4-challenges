class Display

  def print_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} : #{recipe.description}"
    end
  end

  def create_new_recipe
    puts "What is your new recipe name? "
    return name = gets.chomp
    puts "What is your new recipe description? "
    return description = gets.chomp
    recipe = [name, description]
  end

  def get_recipe_name_to_destroy
      puts "Which recipe (name) do you want to destroy?"
      return gets.chomp
  end

end