class EmployeeView

def list_employees(employees)
  employees.each_with_index do |employee, index|
    puts "#{index + 1} - #{employee.name} - #{employee.type}"
  end
end

end