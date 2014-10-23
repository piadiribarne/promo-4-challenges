class Restaurant

attr_reader :name, :location, :meals, :employees

  def initialize(name, location, meals, employees)
    @name = "Au Pied de Fouet"
    @location = "Paris"
    @meals = [ Meal.new ("frites",6), Meal.new ("salade",14), Meal.new ("glace",7)]
    @employees = [ Manager.new ("Hector", "37 rue Vaneau"), Delivery.new ("Igor", "53 rue du Caire"), Delivery.new ("Paul", "94 rue du Bac")]
    @customers = []
 end

end