require_relative './age'
require_relative './salary'

class Employee
  attr_reader :full_name, :age, :salary

  def initialize(full_name:, birthdate:, salary:)
    @full_name = full_name
    @age = Age.new(birthdate: birthdate)
    @salary = Salary.new(salary: salary)
  end

  def first_name
    @full_name.split.first
  end

  def last_name
    @full_name.split.last
  end

  def calculate_age
    @age.calculate
  end

  def calculate_salary
    @salary.calculate
  end
end
