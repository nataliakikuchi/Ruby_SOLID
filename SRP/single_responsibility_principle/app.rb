require_relative 'employee'
require_relative 'salary'
require_relative 'age'
require_relative 'data_base'

employee = Employee.new(full_name: 'Jordana Nogueira', birthdate: '06/01/1988', salary: 5_000.0)
puts employee.full_name
puts employee.calculate_age
puts employee.calculate_salary

puts employee.first_name
puts employee.last_name

# instance_employee = employee.save
# puts "employee criado #{instance_employee}"

# result = employee.get_employee(instance_employee[:id])
# puts "select de employee #{result}"
