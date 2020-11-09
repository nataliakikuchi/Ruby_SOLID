class Salary
  def initialize(salary:)
    @salary = salary
  end

  def calculate
    @salary - (@salary * 0.225)
  end
end