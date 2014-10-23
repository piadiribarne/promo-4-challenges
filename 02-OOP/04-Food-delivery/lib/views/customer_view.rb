class CustomerView

def list_customers(customers)
  recipes.each_with_index do |customer, index|
    puts "#{index + 1} - #{customer.name} - #{customer.address}"
  end
end

def create_customer
  puts "What is your new customer's name? "
    return name = gets.chomp
    puts "What is your new customer's address? "
    return address = gets.chomp
    customer = [name, address]
end

end