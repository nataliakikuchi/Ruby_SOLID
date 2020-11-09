require './SOLID/SRP/salary'

RSpec.describe Salary do
  context 'when calculating a salary' do
    it 'returns the correct value' do
      salary = 4_000.00
      calculated_salary = Salary.new(salary: salary)

      subject = calculated_salary.calculate

      expect(subject).to eq(3_100.00)
    end
  end
end