class Restaurant

attr_reader :foodtype
attr_writer :name

  def initialize(name, foodtype, price, open, close)
    @name = name
    @foodtype = foodtype
    @price= price
    @open = open
    @close = close
  end

  def isopen?
  	 return @open < Time.now.hour && Time.now.hour < @close
  end

end

restaurant = Restaurant.new("La Palmeraie", "Fusion", "Very high", 10, 23)
restaurant.isopen?