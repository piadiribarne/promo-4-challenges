class Employee

  attr_reader :name, :type, :password
  def initialize (name, password)
    @name = name
    @password = password
  end

end

class Manager < Employee
end

class Delivery < Employee
end
