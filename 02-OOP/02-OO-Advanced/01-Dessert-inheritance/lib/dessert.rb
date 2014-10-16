class Dessert

	attr_reader :calories
	attr_writer :name

  def initialize(name, calories)
  	@name = name
  	@calories = calories
  end

  def healthy?
  	return @calories <= 200
  end

  def delicious?
  	return true 
  end
end

class JellyBean < Dessert

attr_reader :flavor

  def initialize(name, calories, flavor)
  	super(name,calories)
  	@flavor = flavor
  end

  def delicious?
  	return @flavor != "black licorice"
  end

end