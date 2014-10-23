require_relative "../models/customer"
require_relative "../views/customer_view"

class CustomerController

def initialize
  @customer_repository = customer_repository
  @customer_view = CustomerView.new
end

def list
    customers = @customer_repository.customers
    @customer_view.list_customers(customers)
  end

  def create
    recipe = @customer_view.create_customer
    @customer_repository.add(Customer.new(customer))
  end

end
