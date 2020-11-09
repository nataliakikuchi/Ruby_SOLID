require './SOLID/SRP/employee'

RSpec.describe Employee do
  context 'when creating an employee' do
    # before(:each) do
    #   full_name = 'Natalia Kikuchi'
    #   birthdate = Date.new(1990, 7, 10)
    #   salary = 4_000.00
    #   @employee = Employee.new(full_name: full_name, birthdate: birthdate, salary: salary)
    # end

    it 'returns its first name' do
      subject = described_class.new(
        full_name: 'Natalia Kikuchi',
        birthdate: '10/07/1990',
        salary: 4_000.00
      )

      expect(subject.first_name).to eq('Natalia')
    end

    it 'returns its last name' do
      subject = described_class.new(
        full_name: 'Natalia Kikuchi',
        birthdate: '10/07/1990',
        salary: 4_000.00
      )

      expect(subject.last_name).to eq('Kikuchi')
    end

    it 'returns its full name' do
      subject = described_class.new(
        full_name: 'Natalia Kikuchi',
        birthdate: '10/07/1990',
        salary: 4_000.00
      )

      expect(subject.full_name).to eq('Natalia Kikuchi')
    end

    it 'returns its age' do
      age = double('Age')
      age_instance = instance_double(Age)
      allow(age).to receive(:new).with('10/07/1990').and_return(age_instance)
      allow(age_instance).to receive(:calculate).with(no_args).and_return(30)

      subject = described_class.new(
        full_name: 'Natalia Kikuchi',
        birthdate: '10/07/1990',
        salary: 4_000.00
      )

      expect(subject.calculate_age).to eq(30)
    end

    it 'returns its salary' do
      # salary = double('Salary')
      # salary_instance = instance_double(Salary)
      # allow(salary).to receive(:new).with(4_000.00).and_return(salary_instance)
      # allow(salary_instance).to receive(:calculate).with(no_args).and_return(3_100.00)

      subject = described_class.new(
        full_name: 'Natalia Kikuchi',
        birthdate: '10/07/1990',
        salary: 4_000.00
      )

      expect(subject.calculate_salary).to eq(3_100.00)
    end
  end

  # def create_employee(full_name: 'Natalia Kikuchi', birthdate: '10/07/1990', salary: 4_000.00)
  #   Employee.new(full_name: full_name, birthdate: birthdate, salary: salary)
  # end
end