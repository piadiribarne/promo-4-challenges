require "csv"
require_relative "../models/customer"

class CustomerRepository

  attr_reader :customers

  def initialize(csv_file)
    @csv_file = csv_file
    @customers = []

     CSV.foreach(csv_file) do |row|
     @customers << Customer.new(row[0], row[1])
      end
  end

  def add_customer(customer)
    @customers << customer
    update_csv
  end

  def update_csv
      CSV.open(@csv_file, 'wb') do |csv|
        @customers.each do |customer|
          csv << [customer.name, customer.address]
        end
      end
  end


end