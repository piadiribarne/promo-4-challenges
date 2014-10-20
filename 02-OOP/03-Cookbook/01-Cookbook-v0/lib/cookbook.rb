require "csv"
require_relative "recipe"

class Cookbook

  attr_reader :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []

    CSV.foreach(csv_file) do |row|
     @recipes << Recipe.new(row[0], row[1])
    end

  end

  def add_recipe(recipe)
    @recipes << recipe
update_csv
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
update_csv
  end

  def update_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
end

end



# my_cookbook = Cookbook.new("/Users/piadiribarne/code/piadiribarne/promo-4-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv")

# my_cookbook.recipes.each do |recipe|
#   puts recipe.name
# end

